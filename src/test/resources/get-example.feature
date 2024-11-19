Feature: Test GET request for a sample API

  Scenario: Verify GET response from the API
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.title == 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
