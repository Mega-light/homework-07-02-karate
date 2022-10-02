Feature: Test the get end point of the room
  GET 'room/'

  Scenario: Search an available room
    Given url _url
    And path 'room/'
    When method get
    Then def roomId = response.rooms[0].roomid
