Feature: Test the end point of the login
  POST 'auth/login'

  Scenario: Authenticate in login endpoint
    Given url _url
    And path 'auth/login/'
    And header Accept = "application/json"
    And request {username: "admin", password: "password"}
    When method post
    Then status 200
    * def token = responseCookies['token'].value
