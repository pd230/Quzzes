package entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserData {
	@Id
	int id;
	String name , email, password,Uname;
	
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
