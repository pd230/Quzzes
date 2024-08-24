package servlet_pages;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import dto_DATA_TRANSFER_OBJECT.UserSelection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.AnsService;

/**
 * Servlet implementation class CheckUserScore
 */

public class CheckUserScore extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AnsService ansService = new AnsService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		BufferedReader jsonData = request.getReader();
		StringBuilder jsonString = new StringBuilder();
		
		String line;
		
		while((line = jsonData.readLine()) != null) {
			jsonString.append(line);
		}
		
		String jsonStringArray = jsonString.toString();
		
		Gson gsn = new Gson();
//		deserialize JSON into complex generic types.
		
//		UserSelection is class a data transfer object class representing UserSelection and question id
		List<UserSelection> numbers = gsn.fromJson(jsonStringArray, new TypeToken<List<UserSelection>>(){}.getType());
		int max = 0;
		int firstID = 0;
		
		for(int i=0; i<numbers.size(); i++) {
			UserSelection arr =  numbers.get(i);
			int id = (int) arr.getQid();
			int option = (int) arr.getSelectedOption();
			max = Math.max(firstID, id);
		}
		
//		for deriving id of first Question 
		
		for(int i=0; i<numbers.size(); i++) {
			UserSelection arr =  numbers.get(0);
			firstID = (int) arr.getQid();
			break;
		}
		
//		ansService is class a service class providing question id and original answer 
     	List<Object[]> ansIdList = ansService.getAnsDemo();
     	for( int i=firstID-1; i<max; i++) {
     		Object[] arr = ansIdList.get(i);
  	}
     	
	    List<Object[]> dataFromDatabase  = new ArrayList<>();
	   
     	
		for( int i=firstID-1; i<max; i++) {
		  Object[] arr = ansIdList.get(i);
		  dataFromDatabase.add(arr);
	}
		
		
//		checking right answers
		int countRightAns = 0;
		
		for(int i=0; i<numbers.size(); i++) {
			UserSelection arr1 =  numbers.get(i);
			Object[] arr = dataFromDatabase.get(i);
			if(arr1.getQid() == (int) arr[0] && arr1.getSelectedOption() == (int) arr[1]){
				countRightAns++;
			}
		}
		
//		System.out.println("Score : " + countRightAns);
		
		// Create the JSON response
		String jsonResponse = "{\"status\": \"success\", \"score\": " + countRightAns + "}";

		// Set content type to application/json
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// Write the JSON response
		PrintWriter out = response.getWriter();
		out.print(jsonResponse);
		out.flush();
		 
	}

}
