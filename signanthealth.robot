***Settings***
Library     Selenium2Library


***Variables***
${URL}      		http://localhost:8080/
${BROWSER}      	chrome
${VALID USERNAME}	Uma
${VALID PASSWORD} 	durai


***Test Cases***
Open the localhost
    Open Browser   ${URL}       ${BROWSER}
	Title Should Be 	index page - Demo App
	Close Browser
    
Register User
	Open Browser   ${URL}       ${BROWSER}
	
	Click Link		/register
	Title Should Be 	Register - Demo App
	Input Text		username		Uma
	Input Text		password		durai
	Input Text		firstname		UmaMaheshwari 
	Input Text		lastname	Viswanathan
	Input Text		phone	+358 40 320 3343
	Click Button 	Register	
	
	Location Should Be 		http://localhost:8080/login
	Title should Be 	Log In - Demo App
	
	Input Text		username	Uma
	Input Text		password	durai
	Click Button	Log In
	
	Location Should Be		http://localhost:8080/user  		#Test case failure (Expected result doesn't appear)
	Title Should Be		User Information - Demo App
	

