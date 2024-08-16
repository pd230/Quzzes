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

  <%
    HttpSession userSession = request.getSession(false);
    List<QueDemo> list = (List<QueDemo>) userSession.getAttribute("dataList");
    String jsonString = new com.google.gson.Gson().toJson(list);
   /*  if(list!=null){
    for(QueDemo q:list){ */
  %>
      <%-- <h6><%=q.getQuestion() %></h6>
      
  <% }
    }else{ %>
       <h6>Question's are not available</h6>
   <%} %> --%>
   
  <div class="h-screen w-full flex justify-center items-center">
        <div class="h-1/2 w-1/2 flex justify-center items-center p-10" >
           <div class="text-black w-full h-full flex justify-center items-center flex-col">
                  <div class="text-black w-full h-full font-serif text-xl p-5 bg-blue-200 shadow-m rounded-sm shadow-black flex flex-row gap-x-2">
                   Question  <label class="text-black font-serif" id="srNo"> 1</label>)
                   <label id="question"> </label>
                  </div>
   
                  <div class="flex flex-col space-y-4 mt-7 w-full">
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="option1">
                  <label id="option1"></label>
                  </div>
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="option2">
                  <label id="option2"></label>
                  </div>
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="option3">
                  <label id="option3"></label>
                  </div>
                  
                  <div class="flex flex-row bg-blue-100 rounded-lg shadow-sm p-2 shadow-black h-full w-full gap-x-2" >
                  <input type="radio" name="option" value="option4">
                  <label id="option4"></label>
                  </div>
                  
                  </div>
                  
                  <div class="flex flex-row space-x-8 mt-7 h-full w-full justify-center items-center">
                  <button class=" p-3  w-1/6 rounded-lg shodow-sm font-semibold border border-blue-400 border-4" id="prev">prev</button>
                  <button class="bg-blue-300 p-3  w-1/6 rounded-lg shodow-sm font-semibold">submit</button>
                  <button class=" p-3  w-1/6 rounded-lg shodow-sm font-semibold border border-blue-400 border-5 border-solid" id="next">next</button>
                  </div> 
           </div>
        
        </div>
           
   </div>
    
<!-- <script src="javaScript/MakeQuiz.js"></script> -->

<script>
    /* getting list  */
    let arr = <%= jsonString %>

    /* Adding event on previous btn */
    let index = 0;
    questionList(index)
    document.getElementById("prev").addEventListener('click',()=>{
        if(index >= 1 && index <= 9){
            index--;
        }
        questionList(index)
    })

    /* Adding event on next btn */
    document.getElementById("next").addEventListener('click',()=>{
        if(index >= 0 && index < 9){
            index++;
        }
        userSelect(index)
        questionList(index)
    })
        
    /* function to display questions on console */
    function questionList(index){
        let srNo = document.getElementById("srNo");
        srNo.innerText = index+1;

    	let currentQue = document.getElementById("question");
        currentQue.innerText = arr[index].question;
        console.log(arr[index].question);

        let optionNo1 = document.getElementById("option1");
        optionNo1.innerText = arr[index].option1;
        console.log(arr[index].option1);

        let optionNo2 = document.getElementById("option2");
        optionNo2.innerText = arr[index].option2;
        console.log(arr[index].option2);

        let optionNo3 = document.getElementById("option3");
        optionNo3.innerText = arr[index].option3;
        console.log(arr[index].option3);

        let optionNo4 = document.getElementById("option4");
        optionNo4.innerText = arr[index].option4;
        console.log(arr[index].option4);
        
        }

    /* getting answer selected by user */
    function userSelect(index){
     let userSelect = document.querySelector('input[name="option"]:checked');
     console.log(index+1 ," : ",userSelect);
     
     let userValue = document.querySelector('input[value]:checked');
     console.log(index+1 ," : ",userSelect.value);

     let input = document.querySelector('input:checked');
     console.log(index+1 ," : ",input);
     
     let values = userSelect.value;
     console.log(arr[index].values);
     
    }

   
    
</script>

</body>
</html>