package daoImpl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;


public class IBaseDaoImp{

	private static SessionFactory factory = null;
    static{
        try {
            //¶ÁÈ¡hibernate.cfg.xmlÎÄ¼þ
            Configuration cfg = new Configuration().configure();
            factory = cfg.buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static SessionFactory getSessionFactory(){
        return factory;
    }
    public static Session getSession(){
        return factory.openSession();
    }
    public static void closeSession(Session s){
        if(s !=null){
            if(s.isOpen()){
                s.close();
            }
        }
    }

}