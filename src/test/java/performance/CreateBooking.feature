Feature: Get Users

	Background:
		* url 'https://reqres.in'
		* header Content-type = 'application/json'
		
   Scenario: Create a booking
	
		Given path '/api/users/2'
		When method GET
		Then status 200 
	