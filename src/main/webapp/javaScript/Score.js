
    let score = document.getElementById("score").innerText;
    // Calculate the number of wrong answers assuming total answers = 10
    let totalAnswers = 10;
    let wrongAns = totalAnswers - score;

    document.getElementById("totalScore").innerText = score;

    // Update the wrongScore label
    document.getElementById("wrongScore").innerHTML = wrongAns;


             function getCertificate(){
             if(score<=5){
                 window.confirm("You are not eligible for certificate, try again !")
                 }
             else{
                 document.getElementById("Certificate").submit();
                 }
        }



      