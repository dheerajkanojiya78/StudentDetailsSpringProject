package com.student.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.student.dao.StudentDao;
import com.student.model.Student;
import com.student.pojo.StudentBean;
import com.student.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService studentServices;

	@Autowired
	StudentDao studentDao;

	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView getSearchPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("studentSearch");
		Map<String, String> stream = new HashMap<String, String>();
		stream.put("SCIENCE", "Science");
		stream.put("COMMERCE", "Commerce");
		stream.put("ARTS", "Arts");
		mav.addObject("streamList", stream);
		mav.addObject("studentSearch", new StudentBean());
		return mav;
	}

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView getCreatePage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("studentCreate");
		Map<String, String> stream = new HashMap<String, String>();
		stream.put("SCIENCE", "Science");
		stream.put("COMMERCE", "Commerce");
		stream.put("ARTS", "Arts");
		mav.addObject("streamList", stream);
		List<String> sportsList = new ArrayList<String>();
		sportsList.add("Cricket");
		sportsList.add("Football");
		sportsList.add("Sprint");
		sportsList.add("Carrom");
		mav.addObject("sportsList",sportsList);
		mav.addObject("student", new StudentBean());
		return mav;
	}

	@RequestMapping(value="/createStudentRecord", method=RequestMethod.POST)
	public ModelAndView createStudentEntry(HttpServletRequest request, HttpServletResponse response,StudentBean studentBean){
		ModelAndView mav  = null;
		try {
			if(studentBean.getStudentRollNumber() != 0) {
				boolean validateStudent = studentServices.validateStudent(studentBean.getStudentRollNumber());
				if(!validateStudent) {
					boolean insertStudentRecord = studentServices.insertStudentRecord(studentBean);
					if(insertStudentRecord) {
						mav = new ModelAndView("response");
						mav.addObject("message","Sucessfully Created !");
					}else {
						mav = new ModelAndView("response");
						mav.addObject("message","Creation Failed !");
					}
				}else {
					mav = new ModelAndView("response");
					mav.addObject("message","This "+studentBean.getStudentRollNumber()+" roll number allready Present");
				}
			}else {
				mav = new ModelAndView("response");
				mav.addObject("message","Roll Number cannot be 0");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("response");
			mav.addObject("message","Something went wrong !");
			return mav;
		}
		return mav;
	}


	@RequestMapping(value="/getStudentRecord", method=RequestMethod.POST)
	public ModelAndView getStudentByFilter(HttpServletRequest request, HttpServletResponse response,StudentBean studentBean){
		ModelAndView mav  = null;
		try {
			List<StudentBean> studentBeanList = new ArrayList<StudentBean>();

			List<Student> studentList = studentServices.getStudentlist(studentBean);

			if(!studentList.isEmpty() && studentList != null) {
				studentList.stream().map(A -> studentBeanList.add(new StudentBean(A.getStudentId(),A.getStudentRollNumber(), A.getStudentFirstName(), A.getStudentLastName(),
						A.getPercent(), A.getAge(), A.getEmailId(), A.getMobileNumber(), A.getAddress(), A.getStream(),A.getCreateDate(),
						new String[]{A.getSports()}))).collect(Collectors.toList());

				if(!studentBeanList.isEmpty()) {
					mav = new ModelAndView("searchResult");
					mav.addObject("studentBeanList", studentBeanList);
				}else {
					mav = new ModelAndView("response");
					mav.addObject("message", "NO Record Found");
				}
			}else {
				mav = new ModelAndView("response");
				mav.addObject("message", "NO Record Found");
			}

		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("response");
			mav.addObject("message", "Something went wrong !");
			return mav;
		}
		return mav;
	}

	@RequestMapping(value="/updateStudentRecord/{id}", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView getStudentEntryForUpdate(HttpServletRequest request, HttpServletResponse response,@PathVariable String id){
		ModelAndView mav  = null;
		try {
			StudentBean studentRecord = studentServices.getStudentRecord(Integer.parseInt(id));
			if(studentRecord != null) {
				mav = new ModelAndView("updateStudent");
				mav.addObject("studentId", studentRecord.getStudentId());
				mav.addObject("rollNo", studentRecord.getStudentRollNumber());
				mav.addObject("firstName", studentRecord.getStudentFirstName());
				mav.addObject("lastName", studentRecord.getStudentLastName());
				mav.addObject("percent", studentRecord.getPercent());
				mav.addObject("emailId", studentRecord.getEmailId());
				mav.addObject("age", studentRecord.getAge());
				mav.addObject("mobileNo", studentRecord.getMobileNumber());
				mav.addObject("address", studentRecord.getAddress());
				mav.addObject("streams", studentRecord.getStream());
				List<String> asList = Arrays.asList(studentRecord.getSports());
				mav.addObject("selectedSports",String.join(",", asList));
				List<String> sportsList = new ArrayList<String>();
				sportsList.add("Cricket");
				sportsList.add("Football");
				sportsList.add("Sprint");
				sportsList.add("Carrom");
				mav.addObject("sportsList",sportsList);
				mav.addObject("updatedStudentRecord", new StudentBean());
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("response");
			mav.addObject("message","Something went wrong !");
			return mav;
		}
		return mav;
	}

	@RequestMapping(value="/updateStudentRecord/updateExistingStudentRecord", method=RequestMethod.POST)
	public ModelAndView updateExistingStudentRecord(HttpServletRequest request, HttpServletResponse response,StudentBean studentBean){
		ModelAndView mav  = null;
		try {
			
			Student validateStudent = studentDao.validateStudent(studentBean.getStudentRollNumber());
			if(validateStudent != null && studentBean.getStudentRollNumber() == validateStudent.getStudentRollNumber()) {
				int updatdeStudentRecord = studentServices.updateStudentRecord(studentBean);
				
				if(updatdeStudentRecord == 1) {
					mav = new ModelAndView("response");
					mav.addObject("message", "Updated Successfully");
				}else {
					mav = new ModelAndView("response");
					mav.addObject("message", "Not Updated Successfully");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("response");
			mav.addObject("message","Something went wrong !");
			return mav;
		}
		return mav;
	}


	@RequestMapping(value="/deleteStudentRecord/{id}", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response,@PathVariable String id){
		ModelAndView mav  = null;
		try {
			int deleteStudentRecord = studentDao.deleteStudentRecord(Integer.parseInt(id));
			if(deleteStudentRecord == 1) {
				mav = new ModelAndView("response");
				mav.addObject("message", "Record Deleted Successfully");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("response");
			mav.addObject("message","Something went wrong !");
		}
		return mav;
	}
}
