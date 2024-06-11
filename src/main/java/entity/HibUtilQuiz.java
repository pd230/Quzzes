package entity;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibUtilQuiz {
	private static SessionFactory sessionFactory;
	
	static {
		try {
		sessionFactory =new Configuration().configure().buildSessionFactory();
		}catch(HibernateException hex) {
			System.out.println("error : "+ hex);
		}
	}
	
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
}
