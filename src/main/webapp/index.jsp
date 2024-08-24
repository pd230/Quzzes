<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/tailwind.css">
   <link rel="stylesheet" href="css_files/main.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
   integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
   crossorigin="anonymous" referrerpolicy="no-referrer" />
  
</head>
<title>QuizMaster</title>
</head>
<body>
<div class="w-full  flex flex-col h-screen w-full">
    <div id="header" class="w-full h-13 flex gap-40 items-center" style="background-color: rgb(34,211,238 );">
            <div class="ml-16 text-white font-serif w-1/2 pr-11" style="font-size:2rem; font-family:system-ui">
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
    
    <div id="main" class="mt-20 w-fit h-fit flex flex-row h-full">
        <div id="content" class="ml-20 flex flex-col justify-center items-center w-1/2 h-full " >
            <div id="name">
                <label class="text-9xl font-serif" style="color: rgb(170, 145, 5); ">QuizMaster</label><br>
            </div>
           <div class="mt-10 w-40 h-10  rounded-l rounded-r flex flex-row space-x-0">
                <button id="btn1" onclick="window.location.href='Login.jsp'"  class="w-3/6 h-full text-white rounded-l">Log in</button>
                <button id="btn2" onclick="window.location.href='signUp.jsp'" class="ml-2 text-white w-3/6" style="background-color: rgb(165, 145, 1);">sign up</button>
           </div>
            <div class="flex flex-col items-center">
                <label id="h11" class="mt-10 font-semibold text-3xl ">It's Quizz Time</label>
                <label class="font-semibold text-xl ">start your journey towards becoming a quiz
                    master!</label>
            </div>
    </div>
    
    <div>
        <img src="images/index2.png" class="h-full w-full">
    </div>
    </div>
    
    <div class="h-60 w-full flex flex-col items-center justify-center mt-20 bg-opacity-10 mb-8" id="aboutUs">
            <label class="font-serif font-bold text-5xl" style="color: rgb(170, 145, 5);">Welcome to QuizMaster!<br></label><hr class="border-t-2 border-blue-500 mb-2">
            <lable class="text-lg">
                At QuizMaster, we believe that learning should be both fun and engaging. Our mission is to provide a
                dynamic platform <br>  where users can test their knowledge,
                challenge friends, and learn new things in an interactive way.</lable>
            <label class="font-serif">Our Vision</label>
            <label class="text-lg"> Our vision is to become the leading online quiz platform, inspiring curiosity and a love for
                learning in people of all ages.<br> We aim to foster a
                community of knowledge seekers who are eager to learn and grow through interactive quizzing.</label>
            <label class="font-serif">Join Us</label>
            <label class="text-lg">Whether you're a trivia enthusiast, a student preparing for exams, Interviews QuizMaster
                is the perfect place for you. Join<br> our community today and start your journey towards becoming a quiz
                master!</label>
        </div>

        <div class="h-fit w-full flex flex-row items-center justify-between  mt-10" id="aboutUs"
            style="background-color: rgb(34,211,238); ">
            <Label class="ml-20">Get Connect with us on Social networks!</Label>
            <label class="mr-20 space-x-10">
                <i class="fa-brands fa-instagram" style="color: #d60a96;"></i><i class="fa-solid fa-envelope" style="color: #e89805;"></i>
                <i class="fa-brands fa-facebook" style="color: #215bc0;"></i><i class="fa-brands fa-twitter" style="color: #d81323;"></i>
                <i class="fa-brands fa-whatsapp" style="color: #1da80b;"></i></label>
        </div>

        <div class="h-60 w-full flex flex-row items-center justify-center space-x-7" id="aboutUs"
            style="background-color: rgb(193, 213, 114)">
            <div class="mr-5 h-56 w-2/5 mt-20">
                <label class="font-bold">FEEDBACK</label><br>
                <textarea class="mr-5 w-10/12 h-3/6 mt-2 opacity-50" placeholder="write here..."></textarea><br>
                <button style="background-color:rgba(0, 0, 0, 0.652);" class="p-1 px-3 rounded-lg text-white font-mono">send</button>
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
            style="background-color: rgba(0, 0, 0, 0.652);">
           <label class="text-sm font-mono text-white">@COPYRIGHT</label>
        </div>
    </div>
    
    
 </div>

</body>
</html>