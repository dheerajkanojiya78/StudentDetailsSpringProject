package com.student.service;

import java.util.List;

import com.student.model.Student;
import com.student.pojo.StudentBean;

public interface StudentService {

	public List<Student> getStudentlist(StudentBean student);
	public boolean deleteStudentRecord(StudentBean student);
	public int updateStudentRecord(StudentBean student);
	public boolean insertStudentRecord(StudentBean student);
	public boolean validateStudent(int id);
	public StudentBean getStudentRecord(int id);
	
}
