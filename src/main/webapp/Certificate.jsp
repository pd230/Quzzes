<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="services.ScoreDataServise" %>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Certificate Page</title>
	<link rel="stylesheet" type="text/css" href="css/tailwind.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
   integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
   crossorigin="anonymous" referrerpolicy="no-referrer" />
  
</head>
<body>
 <% 	   
       String name = (String) session.getAttribute("name");
       String Score = (String) session.getAttribute("Score");
       String type = (String) session.getAttribute("type");
       LocalDate date = LocalDate.now();
    %>
    
    <%-- <%=name %><br>
    <%=Score %><br>
    <%=type %><br> --%>
    <form action="CertificateGenerator" method="get">
        <div class="h-fit w-full flex flex-row justify-center gap-x-3">
            <button id="Download" type="submit" class="flex flex-col items-right text-2xl bg-blue-200 p-2 rounded-lg mt-5 -mb-4 shadow-lg">Download</button>
            <a href="Home.jsp" class="flex flex-col items-right text-2xl bg-blue-200 px-6 py-2 rounded-lg mt-5 -mb-4 shadow-lg" >Back</a>
       </div>
    <div class="h-screen w-full flex justify-center items-center">
    <div class="h-5/6 w-3/4 flex flex-col justify-center items-center border-2 border-solid border-red-200 "
         style="background-image:url('images/Certificate3.png'); background-size:cover; background-repeat:no-repeat;">
       <div class="h-fit w-4/6 flex flex-col justify-center items-center space-y-2 font-semibold ">
            <div class="text-3xl space-x-2 mb-10">
                <i class="fa-brands fa-slack"></i><label>QuizMaster</label>
            </div>
            <label class="text-4xl font-semibold font-serif">CERTIFICATE OF COMPLETION</label>
            <label for="">Presented to</label> 
            <Label class="text-blue-600 text-4xl font-cursive"><%=name %></Label>
            <Label class="">For successfully completing a online quiz of</label>
            <label class="font-semibold text-2xl"><%=type%></label>
            <div class="">and obtained <label class="font-semibold text-2xl text-blue-600"><%= Score %></label> out of 10</div> 
       </div>
       <div class="flex flex-col justify-center items-center pt-10 space-y-2 ">
            <label for="">Provided by</label>
            <label class="text-3xl font-semibold">QuizMaster</label>
            <label for=""><%=date %></label>
       </div>
       
    </div>
    </div>
    
    <input type="hidden" name="name" value="<%=name %>">
    <input type="hidden" name="type" value="<%=type %>">
    <input type="hidden" name="Score" value="<%=Score %>">
    
    </form>
  
</body>
</html>
