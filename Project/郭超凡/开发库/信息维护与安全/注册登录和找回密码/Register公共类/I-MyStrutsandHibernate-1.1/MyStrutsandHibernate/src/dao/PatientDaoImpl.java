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
		// TODO Auto-generated method stub
		return null;
	}
	
}
