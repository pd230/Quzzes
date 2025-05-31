package entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class ScoreData {
	@Id
	int testno;
	
	@Column(name="score")
	String score;
	
	@Column(name="type")
	String type;
	
	@ManyToMany(mappedBy="scoreData", cascade = CascadeType.PERSIST)
	List<UserData> userData = new ArrayList<>();

	public List<UserData> getUserData() {
		return userData;
	}

	public void setUserData(List<UserData> userData) {
		this.userData = userData;
	}


	public int getTestno() {
		return testno;
	}

	public void setTestno(int testno) {
		this.testno = testno;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
