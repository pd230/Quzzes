<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="services.CheckUser" %>

<!DOCTYPE html>
<html lang="en" style="-webkit-text-size-adjust: 100%;">
<head>
<title>QuizMasters - Home page</title>

<link rel="stylesheet" type="text/css" href="css/tailwind.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
   integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
   crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="javaScript/MakeQuiz.js"></script>
</head>
<body>

      <!-- for validate user -->

<% 
      String username = (String)session.getAttribute("Uname");
      String password = (String)session.getAttribute("password");
    		  
    		  if(!CheckUser.isAvailableInDb(username, password)){
    	    	  response.sendRedirect("Login.jsp");
    	    	  out.print("Login error");
    	      }
      
%>

      <!-- complete home page UI  -->
      
    <div class="w-full  flex flex-col">
        <!-- Header Section -->
        <div id="header" class="w-full h-13 flex gap-40 items-center" style="background-color: rgb(34,211,238 );">
            <div class="ml-16 text-white font-serif w-1/2 pr-11" style="font-size:2rem">
                <i class="fa-brands fa-slack"></i><label>QuizMaster</label>
            </div>
            <div class="flex  space-x-5 text-l mr-5 h-full items-center">
                <a href="index.jsp" class="text-white hover:text-cyan-600" target="_parent">
                        <i class="fa-solid fa-right-from-bracket"></i>Log Out</a>
            </div>
        </div>

        <!-- Content Section -->
        <div id="content" class="flex-1 w-full flex flex-row  space-x-4 justify-center items-center -ml-4">
            <div class="h-5/6 w-1/5 flex flex-col items-center justify-center">
                <div class=" h-5/6 w-3/4 flex flex-col space-y-14 items-center justify-center ">

                     <div id="Profile" class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-solid fa-user"></i>
                        <a href="javascript:void(0)">Profile</a>
                    </div>
                    <div id="MakeQuizz" class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-brands fa-slack"></i>
                        <a href="javascript:void(0);">Make Quizz</a>
                    </div>
                    <div class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-brands fa-squarespace"></i>
                        <a href="MyQuestions">Attend Quizz</a>
                    </div>
                    <div id="Certificate" class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-solid fa-file-lines"></i>
                        <a href="javascript:void(0)">Generate Certificate</a>
                    </div>

                </div>

            </div>


            <div class="h-5/6 w-3/4 flex items-center justify-center" id="content2" style="overflow: auto; height: 700px; width: 1000px;">
                <img src="images/bg1.jpg" class="h-fit w-full opacity-70" alt="">
            </div>
        </div>


     
</body>
</html>