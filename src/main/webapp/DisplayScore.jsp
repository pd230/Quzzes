<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserScore</title>
</head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/tailwind.css">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
   <link rel="stylesheet" href="css_files/main.css">
<body style="background-image:url('images/scoreBg.png'); background-size:cover;" class="w-full h-screen flex justify-center items-center">
  <div class="bg-black h-1/2 w-1/2 bg-opacity-80 font-serif rounded-xl shadow-lg shadow-black flex flex-col justify-center items-center">
        
       <div class=" h-1/6 flex flex-row text-3xl justify-center items-center m-y-20 text-green-400">
           <h5>Your response will be submitted successfully !</h5>
       </div>
       <div class=" h-1/6 flex flex-row text-3xl justify-center items-center m-y-20 text-white gap-x-2">
           <h3>Right Answers :</h3>
           <label id="score"><%=request.getParameter("score") %></label>
       </div>
       <div class=" h-1/6 flex flex-row text-3xl justify-center items-center m-y-20 text-white gap-x-2">
           <h3> Wrong Answers : </h3>
           <label id="wrongScore">0</label>
       </div>
       <div class=" h-1/6 flex flex-row text-3xl justify-center items-center m-y-20 text-white gap-x-2">
           <h3> Your Score : </h3>
           <label id="totalScore">0</label>
       </div>
       <div class=" h-1/6 flex flex-row text-2xl justify-center items-center m-y-20 text-white gap-x-2">
       <button class="h-fit px-2 bg-blue-300 rounded-lg text-black" onclick='window.location.href="Home.jsp"'>Back</button>
       <button class="h-fit px-2 bg-blue-300 rounded-lg text-black" id="Certificate">Certificate</button>
       </div>
  </div>
<script>
   document.addEventListener("DOMContentLoaded", function() {
    let score = document.getElementById("score").innerText;
    // Calculate the number of wrong answers assuming total answers = 10
    let totalAnswers = 10;
    let wrongAns = totalAnswers - score;

    document.getElementById("totalScore").innerText = score;

    // Update the wrongScore label
    document.getElementById("wrongScore").innerHTML = wrongAns;
    console.log(wrongAns);

    let getCertificate = document.getElementById("Certificate");
    getCertificate.onclick = ()=>{
             if(score<=5){
                 window.confirm("You are not eligible for certificate, try again !")
                 }
             else{
                 window.location.href="Home.jsp"
                 }
        }
   });
</script>
</body>
</html>