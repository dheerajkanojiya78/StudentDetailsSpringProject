package com.student.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="studentId")
	private int studentId;
	
	@Column(name="studentrollnumber")
	private int studentRollNumber;
	
	@Column(name="studentfirstname")
	private String studentFirstName;
	
	@Column(name="studentlastname")
	private String studentLastName;
	
	@Column(name="percent")
	private int percent;
	
	@Column(name="age")
	private int age;
	
	@Column(name="emailId")
	private String emailId;
	
	@Column(name="mobilenumber")
	private String mobileNumber;
	
	@Column(name="address")
	private String address;
	
	@Column(name="stream")
	private String stream;
	
	@Column(name="createdate")
	private Date createDate;
	
	

	public Student(int studentId, int studentRollNumber, String studentFirstName, String studentLastName, int percent,
			int age, String emailId, String mobileNumber, String address, String stream, Date createDate) {
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

	public Student() {
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	
}
