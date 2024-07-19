<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

<form class="bg-white shadow-md rounded p-20 mt-8">
    <label class="mb-2 text-bold" title="label"><strong>Select Language:</strong></label>
    <input type="radio" name="lang"> JAVA
    <input type="radio" name="lang"> PYTHON<br><br>
    
    <label class="mb-2" title="time"><strong>Select Time:</strong></label>
    <input type="radio" name="time"> 5 min
    <input type="radio" name="time"> 10 min
    <input type="radio" name="time"> 15 min
    <input type="radio" name="time"> 20 min<br><br>

    <label class="mb-2" title="level"><strong>Select Quizz level:</strong></label>
    <input type="radio" name="level"> begginner
    <input type="radio" name="level"> Intermidiate
    <input type="radio" name="level"> Hard<br><br>

    <button type="submit" class="bg-blue-500 text-white p-2 rounded">Create Quiz</button>
</form>

</body>
</html>