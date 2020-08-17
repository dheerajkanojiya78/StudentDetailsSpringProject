package com.student.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.student.model.Student;

@Repository
@Transactional
public class StudentDaoImpl implements StudentDao{
	
	@Autowired
	SessionFactory sessionFactory;

	public List<Student> getStudentlistByFilter(int rollNumber,String mobile, String emailId) {
		List<Student> studentList = null;
		try {
			boolean flag = false;
			StringBuilder query = new StringBuilder("from Student");
			
			if(rollNumber != 0 || (mobile != "" && mobile != null) || (emailId != "" && emailId != null)) {
				query.append(" where");
			}
			if(rollNumber != 0) {
				query.append(" studentRollNumber = :rollNumber");
				flag = true;
			}
			if(mobile != "" && mobile != null) {
				if(flag)
					query.append(" and");
				query.append(" mobileNumber = :mobile");
				flag = true;
			}
			if(emailId != "" && emailId != null) {
				if(flag)
					query.append(" and");
				query.append(" emailId = :emailId");
			}
			query.append(" order by createDate desc");
			
			Query createQuery = sessionFactory.getCurrentSession().createQuery(query.toString());
			
			if(rollNumber != 0) {
				createQuery.setInteger("rollNumber", rollNumber);
			}
			if(mobile != "" && mobile != null) {
				createQuery.setString("mobile", mobile);
			}
			if(emailId != "" && emailId != null) {
				createQuery.setString("emailId", emailId);
			}
			
			studentList = createQuery.list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return studentList;
	}

	public int deleteStudentRecord(int rollNumber) {
		try {
			
			Query createQuery = sessionFactory.getCurrentSession().createQuery("delete Student where studentRollNumber = :rollNumber");
			createQuery.setInteger("rollNumber", rollNumber);
			int executeUpdate = createQuery.executeUpdate();
			return executeUpdate;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
		
	}

	public boolean insertStudentRecord(Student student) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(student);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}

	public int updateStudentRecord(Student student) {
		DateFormat dateFormate = new SimpleDateFormat("yyyy-MM-dd");	
		Date date = new Date();
		String currDate = dateFormate.format(date);
		//Session session = sessionFactory.openSession();
		try {
			//session.beginTransaction();
			Query createQuery = sessionFactory.getCurrentSession().createQuery("update Student set studentId= :studentId, studentRollNumber= :rollNumber, studentFirstName= :firstName, "
					+ "studentLastName= :lastName, percent= :percent, age= :age, emailId= :email, mobileNumber= :mobile, address= :address, stream= :stream, "
					+ "sports= :sports, createDate= :date where studentRollNumber= :rollNumber");
			createQuery.setInteger("studentId", student.getStudentId());
			createQuery.setInteger("rollNumber", student.getStudentRollNumber());
			createQuery.setString("firstName", student.getStudentFirstName());
			createQuery.setString("lastName", student.getStudentLastName());
			createQuery.setInteger("percent", student.getPercent());
			createQuery.setInteger("age", student.getAge());
			createQuery.setString("mobile", student.getMobileNumber());
			createQuery.setString("stream", student.getStream());
			createQuery.setString("address", student.getAddress());
			createQuery.setString("email", student.getEmailId());
			createQuery.setDate("date", student.getCreateDate());
			createQuery.setString("sports", student.getSports());
			int executeUpdate = createQuery.executeUpdate();
			//session.getTransaction().commit();
			return executeUpdate;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
		//return flg;
	}

	public Student validateStudent(int rollNumber) {
		Student student = null;
		List list = null;
		try {
			Query createQuery = sessionFactory.getCurrentSession().createQuery("from Student where studentRollNumber= :rollNumber");
			createQuery.setInteger("rollNumber", rollNumber);
			list = createQuery.list();
			if(list.size() > 0) {
				student =(Student) list.get(0);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return student;
	}

	

}
