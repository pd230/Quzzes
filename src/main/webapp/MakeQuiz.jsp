<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

<form class="bg-white shadow-md rounded p-20 mt-8 flex flex-col" method="get" action="MyQuestions">
    <div><label class="mb-2 text-bold" title="label"><strong>Select Technology :</strong></label></div>
    <div><input type="radio" name="lang" value="Java"> Java</div>
    <div><input type="radio" name="lang" value="HTML"> HTML</div>
    <div><input type="radio" name="lang" value="CSS"> CSS</div>
    <div><input type="radio" name="lang" value="JavaScript"> JavaScript</div>
    <div><input type="radio" name="lang" value="Spring"> Spring</div>
    <!-- <div><input type="radio" name="lang" value="FullStack"> FullStack(Contain All Above Languages)</div> -->
    
    <div class="mt-5 flex justify-center">
    <input id="QuizBtn" type="submit" class="bg-blue-500 text-white p-2 rounded w-fit px-2">Create Quiz</a>
    </div>
</form>

</body>
</html>