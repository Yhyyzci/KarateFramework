Feature: Test error handling in API

  Scenario: Verify 404 response for non-existent resource
    Given url 'https://jsonplaceholder.typicode.com/posts/999999'
    When method GET
    Then status 404
    And match response.error == 'Not Found'
