package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.QueDemo;
import services.HibUtilQuiz;

public class QueDemoDAO {

    public List<Object[]> getAllQuestions() {
        Transaction tx = null;
        List<Object[]> questions = null;
        try (Session session = HibUtilQuiz.getSessionFactory().openSession()) {
            tx = session.beginTransaction();
            Query<Object[]> query = session.createQuery("select q.question, q.option1, q.option2, q.option3, q.option4, q.category, q.type, q.qid from QueDemo q", Object[].class);
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

