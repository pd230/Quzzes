      
      document.addEventListener("DOMContentLoaded", function(){
      document.getElementById('MakeQuizz').addEventListener("click",function(){
            fetch("MakeQuiz.jsp")
            .then(response => response.text())
            .then(data => {
                document.getElementById('content2').innerHTML = data;
            })
          })
        })
        
        
        document.addEventListener('DOMContentLoaded', function(){
        document.getElementById('Certificate').addEventListener('click', function(){
             fetch('Certificate.jsp')
             .then(response => response.text())
             .then(data => {
                 document.getElementById('content2').innerHTML = data;
              })
            })
          })
         
         document.addEventListener("DOMContentLoaded", function(){
         document.getElementById('Profile').addEventListener('click', function(){
             fetch('Profile.jsp')
             .then(response => response.text())
             .then(data => {
              document.getElementById('content2').innerHTML = data;
              })
            })
          })