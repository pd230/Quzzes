package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import dto_DATA_TRANSFER_OBJECT.AnsProvider;
import services.HibUtilQuiz;

public class AnsDemo {
	int qid;
	String option1, option2, option3, option4, answer;
      
    public List<Object[]> getAnswer() {
    	
    	List<Object[]> idAnsOption = new ArrayList<>();
    	
    	Session session = HibUtilQuiz.getSessionFactory().openSession();
    	session.getTransaction().begin();
    	
    	Query<Object[]> ansData = session.createQuery("select q.qid, q.option1, q.option2, q.option3, q.option4, q.answer from QueDemo q", Object[].class);
    	List<Object[]> answerList = ansData.list();
    	
    	for(Object[] row : answerList) {
    		qid = (int) row[0];
    		option1 = (String) row[1];
    		option2 = (String) row[2];
    		option3 = (String) row[3];
    		option4 = (String) row[4];
    		answer = (String) row[5];
    		
    		for(int j=1; j<=4; j++) {
    			String option = "";
    			
    			switch(j) {
    			case 1 : option = option1; break;
    			case 2 : option = option2; break;
    			case 3 : option = option3; break;
    			case 4 : option = option4; break;
    			}
    			
    			if(option.equals(answer)) {
    				Object[] arr = {qid,j};
    				idAnsOption.add(arr);
    			}
    			
    		}
    		
    	}
    	
		session.getTransaction().commit();
		return idAnsOption;
    }
}
