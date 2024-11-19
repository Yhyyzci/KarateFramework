Feature: Test GET request with query parameters

  Scenario: Verify GET request with query parameters
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And param userId = 1
    When method GET
    Then status 200
    And match response[0].userId == 1
