package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.ScoreData;
import services.HibUtilQuiz;

public class ScoreDAO {

        Integer testNos = 0;
        Transaction tx = null;
        Session session = null;

        

    public void createScoreData(String score, String type) {
     
        try {
            session = HibUtilQuiz.getSessionFactory().openSession();
            tx = session.beginTransaction();
            
            Query<Integer> query = session.createQuery("select max(testno) from ScoreData", Integer.class);
            Integer maxTestNo = query.uniqueResult();
            
            // Determine the next test number
            int testNo = (maxTestNo == null) ? 1 : maxTestNo + 1;
            
            ScoreData scoreData = new ScoreData();
            scoreData.setTestno(testNo);
            scoreData.setScore(score);
            scoreData.setType(type);
            
            session.save(scoreData);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            System.out.println("Error in createScoreData: " + e.getMessage());
        } finally {
            if (session != null) session.close();
        }
    }

    public List<ScoreData> getScoreData() {
        List<ScoreData> scoreDataList = new ArrayList<>();
    
        try {
            session = HibUtilQuiz.getSessionFactory().openSession();
            tx = session.beginTransaction();
            
            Query<ScoreData> query = session.createQuery("from ScoreData", ScoreData.class);
            scoreDataList = query.list();
            
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            System.out.println("Error in getScoreData: " + e.getMessage());
        } finally {
            if (session != null) session.close();
        }

        return scoreDataList;
    }
}
