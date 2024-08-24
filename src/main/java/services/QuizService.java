package services;

import java.util.List;

import dao.QueDemoDAO;
import entity.QueDemo;

public class QuizService {

    private QueDemoDAO queDemoDAO;

    public QuizService() {
        queDemoDAO = new QueDemoDAO();
    }

    public List<Object[]> getQuestions() {
        return queDemoDAO.getAllQuestions();
    }
}
