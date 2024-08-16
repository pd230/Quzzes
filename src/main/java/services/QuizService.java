package services;

import java.util.List;

import dao.QueDemoDAO;
import entity.QueDemo;

public class QuizService {

    private QueDemoDAO queDemoDAO;

    public QuizService() {
        queDemoDAO = new QueDemoDAO();
    }

    public List<QueDemo> getQuestions() {
        return queDemoDAO.getAllQuestions();
    }
}
