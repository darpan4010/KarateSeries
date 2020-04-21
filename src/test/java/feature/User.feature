Feature: check returned users

	Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer EouTFXzI1UeiYPqTFI4BE_mFzbc6MnjdQ0l2'
		
	Scenario: List all the users with name as Margarita
	
		Given path '/public-api/users'
		And param first_name = 'Margarita'
		And param status = 'inactive'
		When method get
		Then status 200
		
		And def userResponse = response
		Then match userResponse.result[*].first_name contains ["Margarita"] 
		