package com.student.pojo;

import java.util.Date;
import java.util.List;

public class StudentBean {
	
	private int studentId;
	private int studentRollNumber;
	private String studentFirstName;
	private String studentLastName;
	private int percent;
	private int age;
	private String emailId;
	private String mobileNumber;
	private String address;
	private String stream;
	private Date createDate;
	private List<StudentBean> studentList;
	
	public StudentBean() {
	}
	
	public StudentBean(int studentId,int studentRollNumber, String studentFirstName, String studentLastName, int percent, int age,
			String emailId, String mobileNumber, String address, String stream, Date createDate) {
		super();
		this.studentId = studentId;
		this.studentRollNumber = studentRollNumber;
		this.studentFirstName = studentFirstName;
		this.studentLastName = studentLastName;
		this.percent = percent;
		this.age = age;
		this.emailId = emailId;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.stream = stream;
		this.createDate = createDate;
	}
	
	
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getStudentRollNumber() {
		return studentRollNumber;
	}
	public void setStudentRollNumber(int studentRollNumber) {
		this.studentRollNumber = studentRollNumber;
	}
	public String getStudentFirstName() {
		return studentFirstName;
	}
	public void setStudentFirstName(String studentFirstName) {
		this.studentFirstName = studentFirstName;
	}
	public String getStudentLastName() {
		return studentLastName;
	}
	public void setStudentLastName(String studentLastName) {
		this.studentLastName = studentLastName;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public List<StudentBean> getStudentList() {
		return studentList;
	}
	public void setStudentList(List<StudentBean> studentList) {
		this.studentList = studentList;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
}
