package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.QueDemo;
import services.HibUtilQuiz;

public class QueDemoDAO {

    public List<QueDemo> getAllQuestions() {
        Transaction tx = null;
        List<QueDemo> questions = null;
        try (Session session = HibUtilQuiz.getSessionFactory().openSession()) {
            tx = session.beginTransaction();
            Query<QueDemo> query = session.createQuery("from QueDemo", QueDemo.class);
            questions = query.list();
            
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
        return questions;
    }
}

