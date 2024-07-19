<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.QueDemo" %>
<%@ page import="servlet_pages.MyQuestions" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quizz</title>
<link rel="stylesheet" type="text/css" href="css/tailwind.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="javaScript/MakeQuiz.js"></script>
</head>
<body>

  <%   
      String name = (String) session.getAttribute("name");
      List<QueDemo> list = (List<QueDemo>) request.getAttribute("list");
      
      
      if(list != null){
    	  for(Object que : list){
      
   %>
          <%=que.toString() %>
   <%
    	  }
      }else{
   %>
       <%="null" %>
   
   <%
      }
   %>
   
   <%=name %>
   
   
   <div class="h-screen w-full flex justify-center items-center">
        <div class="h-1/2 w-1/2 flex justify-center items-center p-10" >
           <form class="text-black w-full flex justify-center items-center flex-col">
                  <label class="text-black font-serif text-xl p-5 bg-blue-200 shadow-m rounded-sm shadow-black">What is java? Can you please Select One Option from Following please read carefully </label>
   
                  <div class="flex flex-col space-y-4 mt-7 w-full">
                  <label class="bg-blue-100 rounded-lg shadow-sm p-2 shadow-black"><input type="radio" name="option1" value="options"> Option1</label>
                  <label class="bg-blue-100 rounded-lg shadow-sm p-2 shadow-black"><input type="radio" name="option1" value="options"> Option ghighye ieiuybgiuy</label>
                  <label class="bg-blue-100 rounded-lg shadow-sm p-2 shadow-black"><input type="radio" name="option1" value="options"> Option hwygyg</label>
                  <label class="bg-blue-100 rounded-lg shadow-sm p-2 shadow-black"><input type="radio" name="option1" value="options"> Option wgbiyy</label>
               
                  </div>
                  <div class="flex flex-row space-x-8 mt-7 h-full w-full justify-center items-center">
                  <button class="bg-yellow-300 p-3  w-1/6 rounded-lg shodow-sm font-semibold">pev</button>
                  <button class="bg-blue-300 p-3  w-1/6 rounded-lg shodow-sm font-semibold">submit</button>
                  <button class="bg-red-300 p-3  w-1/6 rounded-lg shodow-sm font-semibold">next</button>
                  </div>
           </form>
        
        </div>
           
   </div>
   

</body>
</html>