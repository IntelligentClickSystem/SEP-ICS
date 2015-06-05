package dao;

import java.util.List;

import org.hibernate.*;

import util.HibernateSessionFactory;
import pojo.Patient;
import dao.PatientDao;

public class PatientDaoImpl extends IBaseDaoImp implements PatientDao{


    public Patient registPatient(Patient patient) {
    	
        return patient;
 
	}

	@Override
	public Patient isValidUser(String username, String password) {
		Session session = null;
		session = IBaseDaoImp.getSession();
		session.beginTransaction();
		Patient patient = null;
		String sql= "FROM Patient WHERE id ='"+username+"' AND password = '"+password+"'";
        //调用hibernate
        List<Patient> list = session.createQuery(sql).list();
        if(list!=null && list.size()>0){//若找到的list不为空那么则说明数据库中包含这个人
            patient = list.get(0);
        }
        return patient;
	}
	
}
