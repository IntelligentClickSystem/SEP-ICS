package dao;

import java.util.List;

import org.hibernate.*;

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
        //����hibernate
        List<Patient> list = session.createQuery(sql).list();
        if(list!=null && list.size()>0){//���ҵ���list��Ϊ����ô��˵�����ݿ��а��������
            patient = list.get(0);
        }
        return patient;
	}
	
	public Patient findPassword(String email) {
		Session session = null;
		session = IBaseDaoImp.getSession();
		session.beginTransaction();
		Patient patient = null;
		String sql= "FROM Patient WHERE email ='"+email+"'";
        //����hibernate
        List<Patient> list = session.createQuery(sql).list();
        if(list!=null && list.size()>0){//���ҵ���list��Ϊ����ô��˵�����ݿ��а��������
            patient = list.get(0);
        }
        return patient;
	}
	
}
