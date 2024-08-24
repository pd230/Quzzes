package services;

import java.util.List;

import dao.AnsDemo;

public class AnsService {
	AnsDemo ansDemo;
	
	public AnsService() {
		ansDemo = new AnsDemo();
	}
	
	public List<Object[]> getAnsDemo(){
		return ansDemo.getAnswer();
	}
}
