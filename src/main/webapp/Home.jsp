<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="services.CheckUser" %>

<!DOCTYPE html>
<html lang="en" style="-webkit-text-size-adjust: 100%;">
<head>
<title>QuizMasters - Home page</title>

<link rel="stylesheet" type="text/css" href="css/tailwind.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                <a href="index.jsp" class="text-white hover:text-cyan-600"><i class="fa-solid fa-house"></i>Home</a>
                <a href="#aboutUs" class="text-white hover:text-cyan-600" target="_parent"><i
                        class="fa-solid fa-address-card"></i>About</a>
                <a href="#contact" class="text-white hover:text-cyan-600" target="_parent"><i
                        class="fa-solid fa-address-book"></i>Contact</a>
                <a href="index.jsp" class="text-white hover:text-cyan-600" target="_parent">
                        <i class="fa-solid fa-right-from-bracket"></i>Log Out</a>
            </div>
        </div>

        <!-- Content Section -->
        <div id="content" class="flex-1 w-full flex flex-row  space-x-4 justify-center items-center -ml-4">
            <div class="h-5/6 w-1/5 flex flex-col items-center justify-center">
                <div class=" h-5/6 w-3/4 flex flex-col space-y-14 items-center justify-center ">

                    <div id="MakeQuizz" class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-brands fa-slack"></i>
                        <a href="javascript:void(0);">Make Quizz</a>
                    </div>
                    <div id="Certificate" class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-solid fa-file-lines"></i>
                        <a href="javascript:void(0)">Generate Certificate</a>
                    </div>

                    <div id="Profile" class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-solid fa-user"></i>
                        <a href="javascript:void(0)">Profile</a>
                    </div>
                    <div class="h-1/6 w-4/5 flex flex-col items-center justify-center rounded-xl shadow-lg shadow-stone-900 py-1"
                        style="background-color: rgb(193, 213, 114);">
                        <i class="fa-brands fa-squarespace"></i>
                        <a href="QuetionsDemo.jsp">Attend Quizz</a>
                    </div>
                </div>

            </div>


            <div class="h-5/6 w-3/4 flex items-center justify-center" id="content2" style="overflow: auto; height: 700px; width: 1000px;">
                <img src="images/bg1.jpg" class="h-fit w-full opacity-70" alt="">
            </div>
        </div>


        <div class="h-60 w-full flex flex-col items-center justify-center mt-5 bg-opacity-10 mb-8" id="aboutUs">
            <label class="font-serif font-bold text-3xl" style="color: rgb(170, 145, 5);">Welcome to QuizMaster!<br></label><hr class="border-t-2 border-blue-500 mb-2">
            <lable class="text-sm">
                At QuizMaster, we believe that learning should be both fun and engaging. Our mission is to provide a
                dynamic platform <br>  where users can test their knowledge,
                challenge friends, and learn new things in an interactive way.</lable>
            <label class="font-serif">Our Vision</label>
            <label class="text-sm"> Our vision is to become the leading online quiz platform, inspiring curiosity and a love for
                learning in people of all ages.<br> We aim to foster a
                community of knowledge seekers who are eager to learn and grow through interactive quizzing.</label>
            <label class="font-serif">Join Us</label>
            <label class="text-sm">Whether you're a trivia enthusiast, a student preparing for exams, Interviews QuizMaster
                is the perfect place for you. Join<br> our community today and start your journey towards becoming a quiz
                master!</label>
        </div>

        <div class="h-fit w-full flex flex-row items-center justify-between  mt-10" id="aboutUs"
            style="background-color: rgb(34,211,238 ); ">
            <Label class="ml-20">Get Connect with us on Social networks!</Label>
            <label class="mr-20 space-x-10">
                <i class="fa-brands fa-instagram" style="color: #d60a96;"></i><i class="fa-solid fa-envelope" style="color: #e89805;"></i>
                <i class="fa-brands fa-facebook" style="color: #215bc0;"></i><i class="fa-brands fa-twitter" style="color: #d81323;"></i>
                <i class="fa-brands fa-whatsapp" style="color: #1da80b;"></i></label>
        </div>

        <div class="h-60 w-full flex flex-row items-center justify-center space-x-7" id="aboutUs"
            style="background-color: rgba(47, 112, 120, 0.299); ">
            <div class="mr-5 h-56 w-2/5 mt-20">
                <label class="font-bold">FEEDBACK</label><br>
                <textarea class="mr-5 w-10/12 h-3/6 mt-2 opacity-50" placeholder="write here..."></textarea><br>
                <button style="background-color: rgba(0, 0, 0, 0.652);" class="p-1 px-3 rounded-lg text-white font-mono">send</button>
            </div>

            <div id="contact">
                <label class="font-bold">CONTACT</label>
                <table style="border-spacing: 30px; border:1px">
                    <tr>
                        <td><i class="fa-solid fa-location-dot" style="color: #bb0c0cb7;"></i></td>
                        <td>A4, Pune, Maharashtra, India</td>
                    </tr>
                    <tr>
                        <td><i class="fa-solid fa-envelope" style="color: #c606acaf;"></i></td>
                        <td>quizmaster@gmail.com</td>
                    </tr>
                    <tr>
                        <td><i class="fa-solid fa-phone" style="color: #7e119cae;"></i></td>
                        <td>564 64 932</td>
                    </tr>
                    <tr>
                        <td><i class="fa-solid fa-phone" style="color: #7e119cae;"></i></td>
                        <td>625 873 8726</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="h-8 w-full flex flex-col items-center justify-center" id="aboutUs"
            style="background-color: rgb(193, 213, 114);">
           <label class="text-sm font-mono">@COPYRIGHT</label>
        </div>
    </div>

</body>
</html>