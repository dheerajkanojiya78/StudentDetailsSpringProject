package com.student.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.dao.StudentDao;
import com.student.model.Student;
import com.student.pojo.StudentBean;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	StudentDao studentDao;

	public List<Student> getStudentlist(StudentBean studentBean) {
		List<Student> studentlistByFilter = studentDao.getStudentlistByFilter(studentBean.getStudentRollNumber(), studentBean.getMobileNumber(), studentBean.getEmailId());
		
		return studentlistByFilter;
	}

	public boolean deleteStudentRecord(StudentBean student) {
		// TODO Auto-generated method stub
		return false;
	}

	public int updateStudentRecord(StudentBean student) {
		try {
			Student studentEntity = new Student();
			studentEntity.setStudentRollNumber(student.getStudentRollNumber());
			studentEntity.setStudentFirstName(student.getStudentFirstName());
			studentEntity.setStudentLastName(student.getStudentLastName());
			studentEntity.setStream(student.getStream());
			studentEntity.setAddress(student.getAddress());
			studentEntity.setAge(student.getAge());
			studentEntity.setEmailId(student.getEmailId());
			studentEntity.setMobileNumber(student.getMobileNumber());
			studentEntity.setPercent(student.getPercent());
			studentEntity.setCreateDate(new Date());
			int updateStudentRecord = studentDao.updateStudentRecord(studentEntity);
			return updateStudentRecord;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public boolean insertStudentRecord(StudentBean student) {
		try {
			Student studentEntity = new Student();
			studentEntity.setStudentRollNumber(student.getStudentRollNumber());
			studentEntity.setStudentFirstName(student.getStudentFirstName());
			studentEntity.setStudentLastName(student.getStudentLastName());
			studentEntity.setStream(student.getStream());
			studentEntity.setAddress(student.getAddress());
			studentEntity.setAge(student.getAge());
			studentEntity.setEmailId(student.getEmailId());
			studentEntity.setMobileNumber(student.getMobileNumber());
			studentEntity.setPercent(student.getPercent());
			studentEntity.setCreateDate(new Date());
			studentDao.insertStudentRecord(studentEntity);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public boolean validateStudent(int id) {
		try {
			Student validateStudent = studentDao.validateStudent(id);
			if(validateStudent != null) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public StudentBean getStudentRecord(int id) {

		StudentBean studentBean = new StudentBean(); 
		try {
			Student student = studentDao.validateStudent(id);
			
			if(student != null) {
				studentBean.setStudentId(student.getStudentId());
				studentBean.setStudentRollNumber(student.getStudentRollNumber());
				studentBean.setStudentFirstName(student.getStudentFirstName());
				studentBean.setStudentLastName(student.getStudentLastName());
				studentBean.setAge(student.getAge());
				studentBean.setPercent(student.getPercent());
				studentBean.setEmailId(student.getEmailId());
				studentBean.setMobileNumber(student.getMobileNumber());
				studentBean.setStream(student.getStream());
				studentBean.setAddress(student.getAddress());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return studentBean;
		
	}

	

	

	

}
