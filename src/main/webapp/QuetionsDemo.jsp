<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.QueDemo" %>
<%@ page import="servlet_pages.MyQuestions" %>
<%@ page import="java.util.List" %>
<%@ page import="jakarta.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quizz</title>
<link rel="stylesheet" type="text/css" href="css/tailwind.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
     <!-- Retrieving Data from Bakend -->
  <%
    HttpSession userSession = request.getSession(false);
    List<Object[]> list = (List<Object[]>) userSession.getAttribute("SelectedTypeQue");
    String jsonString = new com.google.gson.Gson().toJson(list);
    String type = (String)userSession.getAttribute("type");
  %>
   <%=type %>
      <!-- creating UI to display Question -->
  <div class="h-screen w-full flex justify-center items-center">
        <div class="h-1/2 w-1/2 flex justify-center items-center p-10" >
           <div class="text-black w-full h-full flex justify-center items-center flex-col">
                  <div class="text-black w-full h-full font-serif text-xl p-5 bg-blue-200 shadow-m rounded-sm shadow-black flex flex-row gap-x-2">
                   Question  <label class="text-black font-serif" id="srNo"> 1</label>)
                   <label id="question"> </label>
                  </div>
   
                  <div class="flex flex-col space-y-4 mt-7 w-full">
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="1">
                  <label id="option1"></label>
                  </div>
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="2">
                  <label id="option2"></label>
                  </div>
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="3">
                  <label id="option3"></label>
                  </div>
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="4">
                  <label id="option4"></label>
                  </div>
                  
                  </div>
                  
                  <div class="flex flex-row space-x-8 mt-7 h-full w-full justify-center items-center">
                  <button class=" p-3  w-1/6 rounded-lg shodow-sm font-semibold border border-blue-400 border-4" id="prev">prev</button>
                  <button class="bg-blue-300 p-3  w-1/6 rounded-lg shodow-sm font-semibold" id="submit">submit</button>
                  <button class=" p-3  w-1/6 rounded-lg shodow-sm font-semibold border border-blue-400 border-5 border-solid" id="next">next</button>
                  </div> 
           </div>
        
        </div>
           
   </div>
    
  <!--  Pass the JSON array from JSP to JavaScript -->
        <script type="text/javascript">
                let arr = <%= jsonString %>
        </script>
        
        <script src="javaScript/QuestionHandler.js"></script>

</body>
</html>