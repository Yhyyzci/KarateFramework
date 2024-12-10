Feature: POST request with data validation

  Scenario: Create a new user and validate data structure
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request { "name": "John Doe", "email": "john.doe@example.com", "phone": "123-456-7890" }
    When method POST
    Then status 201
    And match response == { id: '#notempty', name: '#string', email: '#string', phone: '#string' }
