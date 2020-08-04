package com.student.dao;

import java.util.List;

import com.student.model.Student;

public interface StudentDao {

	public List<Student> getStudentlistByFilter(int rollNumber,String stream, String emailId);
	public int deleteStudentRecord(int id);
	public boolean insertStudentRecord(Student student);
	public int updateStudentRecord(Student student);
	public Student validateStudent(int rollNumber);
}
