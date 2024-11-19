Feature: Load test for user creation API

  Scenario Outline: Create multiple users
    Given url 'https://api.example.com/users'
    And request { "name": "<name>", "age": <age> }
    When method post
    Then status 201
    And match response.name == '<name>'

    Examples:
      | name      | age |
      | User 1    | 30  |
      | User 2    | 25  |
      | User 3    | 40  |
      | User 4    | 35  |
      | User 5    | 50  |

