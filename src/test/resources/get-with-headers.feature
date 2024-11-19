Feature: Test GET request with custom headers

  Scenario: Verify GET request with custom headers
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And header Authorization = 'Bearer someToken123'
    When method GET
    Then status 200
    And match response[0].userId == 1
