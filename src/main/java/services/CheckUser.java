package services;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.HibUtilQuiz;

public class CheckUser {

	public static boolean isAvailableInDb(String Uname, String password) {

		if (Uname.equals("") || password.equals("")) {
			 return false;
		}
		   Transaction tx = null;
		
		   try {
			Session session = HibUtilQuiz.getSessionFactory().openSession();
			tx = session.getTransaction();

			String sql = "from UserData where Uname = :Uname  and password = :password";
			Query query = session.createQuery(sql);
			query.setParameter("Uname", Uname);
			query.setParameter("password", password);

			List<Object[]> list = query.list();
			return list!=null && !list.isEmpty();

	}catch(Exception e){
		e.printStackTrace();
		return false;
	}
	}
}
