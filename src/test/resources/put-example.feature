Feature: Test PUT request to update a resource

  Scenario: Verify PUT request updates an existing resource
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    And request { "id": 1, "title": "updated title", "body": "updated body", "userId": 1 }
    When method PUT
    Then status 200
    And match response.id == 1
    And match response.title == 'updated title'
    And match response.body == 'updated body'
