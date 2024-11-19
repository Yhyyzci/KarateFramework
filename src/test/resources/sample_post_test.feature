Feature: Sample POST API Test

  Scenario: Create a new post
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { "title": "foo", "body": "bar", "userId": 1 }
    When method POST
    Then status 201
    And match response.title == 'foo'
    And match response.body == 'bar'
    And match response.userId == 1
