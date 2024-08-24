 /*Retriving data from json*/
    
    /*let question;
    let option1;
    let option2;
    let option3;
    let option4;
    */
     let qid;
     let userSelections = [];
     
     
    let index = 0;
    questionList(index)
    document.getElementById("prev").addEventListener('click',()=>{
        if(index >= 1 && index <= 9){
            index--;
        }
        questionList(index);
    })

    /* Adding event on next btn */
    document.getElementById("next").addEventListener('click',()=>{
    	userSelect(index)
    	if(index < 9){
			questionList(index+1);
		}
        if(index >= 0 && index < 9){
            index++;
            clearSelection();
        }
    })
        
    /* function to display questions on console */

    
     
        function questionList(index){
        	let arr2 = arr[index];

        	let srNo = document.getElementById("srNo");
            srNo.innerText = index+1;

            
        	let currentQue = document.getElementById("question");
            currentQue.innerText = arr2[0];
            console.log(arr2[0]);

            let optionNo1 = document.getElementById("option1");
            optionNo1.innerText = arr2[1];
            console.log(arr2[1]);

            let optionNo2 = document.getElementById("option2");
            optionNo2.innerText = arr2[2];
            console.log( arr2[2]);

            let optionNo3 = document.getElementById("option3");
            optionNo3.innerText = arr2[3];
            console.log( arr2[3]);

            let optionNo4 = document.getElementById("option4");
            optionNo4.innerText =  arr2[4];
            console.log( arr2[4])
            
           qid = arr2[7]; // Assign the correct value from arr2 to id (make sure this is the correct index)
            console.log(qid);
            }
    

    /* getting answer selected by user */
     
     function userSelect(index){
		 if(userSelect){
     let userSelect = document.querySelector('input[name="option"]:checked');
     console.log(index ," : ",userSelect.value);

      let value = parseInt(userSelect.value);
      
      let IdAns = {
		  "qid" : qid,
		  "selectedOption" : value
	  }
	  
	  
      userSelections[index] = IdAns;
         
      console.log(qid +" : "+ value)
      console.log(userSelections);
       
     }
    }
    
    /* function to clear pre-selected radio button*/
    
    function clearSelection(){
		 document.querySelectorAll('input[name="option"]').forEach(radio =>{
				 radio.checked = false;
		 });
	 }
    
    
    /*Forwarding Array Ahed to the servlet*/
    
    let submit = document.getElementById("submit");
    
    submit.addEventListener('click',()=>{
    fetch("CheckUserScore", {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
     },
       body: JSON.stringify(userSelections) // Ensure this matches your expected JSON format
     })
   .then(response => response.json())
    .then(data => {
    if (data.status === 'success') {
        console.log(data.score); // Log the score to verify it's being received correctly
        window.location.href = 'DisplayScore.jsp?score=' + encodeURIComponent(data.score);
    }
    })
  .catch(error => {
    console.error("Error:", error);
  });
    });
    
    
    
    
    
    
    
