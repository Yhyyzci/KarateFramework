Feature: Sample GET API Test

  Scenario: Get a specific post by ID
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.userId == 1
