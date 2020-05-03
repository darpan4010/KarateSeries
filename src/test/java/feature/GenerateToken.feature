Feature: Check Generated token by API

	Background:
		* url 'https://restful-booker.herokuapp.com'
		* header Content-type = 'application/json'
		
   Scenario: Create a token
	
		Given path '/auth'
		And request {"username" : "admin", "password" : "password123"}
		When method POST
		Then status 200 
	