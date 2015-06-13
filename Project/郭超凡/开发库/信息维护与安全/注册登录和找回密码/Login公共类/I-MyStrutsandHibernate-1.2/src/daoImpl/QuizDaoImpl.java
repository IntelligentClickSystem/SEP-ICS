package daoImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.*;

import pojo.Patient;
import pojo.Quiz;
import dao.QuizDao;

public class QuizDaoImpl extends IBaseDaoImp implements QuizDao{



    //�ж����ݿ���ʱ���и��û�
    @Override
    public List<Quiz> isValidAnswer(String disease) {
    	Session session = null;
    	Transaction trans = null;
    	List<Quiz> list = new ArrayList<Quiz>();
    	try{
    		session = IBaseDaoImp.getSession();
    		trans = session.beginTransaction();
    		Quiz quiz = null;
    		String sql= "FROM Quiz WHERE contents LIKE '%" + disease + "%'";
            //����hibernate
    		
            list = session.createQuery(sql).list();
            trans.commit();
    		return list;
    		
    	}catch(Exception e){
    		trans.rollback();
    		e.printStackTrace();
    	}finally{
    		session.close();
    	}
        return list;
	}

}
