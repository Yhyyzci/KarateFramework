Feature: Test DELETE request to remove a resource

  Scenario: Verify DELETE request removes a resource
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method DELETE
    Then status 200
    And match response == ''
