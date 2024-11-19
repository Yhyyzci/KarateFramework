Feature: API testi

  Scenario: Kullanıcı bilgilerini sorgulama
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'
