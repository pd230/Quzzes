package services;

import java.util.List;

import dao.ScoreDAO;
import entity.ScoreData;

public class ScoreDataServise {
	ScoreDAO scoreDAO;
	int Uid, TestNo;
	String Score, type;
	 
	public ScoreDataServise() {
		scoreDAO = new ScoreDAO();
	}
	
	public void createScoreDatas(String score, String type) {
		scoreDAO.createScoreData(score, type);
	}
	
	public List<ScoreData> getScoreDatas() {
		return scoreDAO.getScoreData();
	}

}
