<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/tailwind.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
   <link rel="stylesheet" href="css_files/main.css">
</head>
<title>QuizMaster</title>
</head>
<body style="background-image: url('images/bg1.jpg'); background-repeat: no-repeat; background-size: cover;" class="w-full h-screen flex flex-row items-center ">
    <div id="main" >
        <div id="content" class="w-full ml-20 flex flex-col justify-center  items-center" >
            <div id="name">
                <label class="text-9xl" style="color: rgb(228, 229, 230);">QuizMaster</label><br>
            </div>
           <div id="btn" class="mt-10 w-40 h-10  rounded-l rounded-r" style="background-color: beige;">
                <button id="btn1" onclick="window.location.href='Login.jsp'"  class="w-3/6 h-full text-white rounded-l">Log in</button>
                <button id="btn2" onclick="window.location.href='signUp.jsp'" class="ml-2 ">sign up</button>
           </div>
            <div class="flex flex-col items-center">
                <label id="h11" class="mt-10 font-semibold text-lg ">It's Quizz Time</label>
                <label>start your journey towards becoming a quiz
                    master!</label>
            </div>
    </div>
    </div>
    

</body>
</html>