package entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class UserData {
	@Id
	int id;
	String name , email, password,Uname;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			 name = "userData_scoreData",
			 joinColumns = @JoinColumn(name = "userData_id"),
			 inverseJoinColumns = @JoinColumn(name="scoreData_testno")
			)
	
	List<ScoreData> scoreData = new ArrayList<>();
	
	
	public List<ScoreData> getScoreData() {
		return scoreData;
	}
	public void setScoreData(List<ScoreData> scoreData) {
		this.scoreData = scoreData;
	}
	public int getId() {
		return id;
	}
	public void setId(int l) {
		this.id = l;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	
	
	@Override
	public String toString() {
		return "UserData [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", Uname="
				+ Uname + "]";
	}

}

