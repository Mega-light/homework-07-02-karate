Feature: Book a room
  POST 'booking/'

  Background: Setup base url
    Given url _url
    And path 'booking/'

  Scenario: A room is booked
    Given def auth = call read("../auth/login/login.feature")
    And def rooms = call read("../room/getRooms.feature")
    And headers {Authorization: "#(auth.token)"}
    And request {bookingdates: {checkin: "2020-06-01T09:48:25.469Z", checkout: "2020-06-01T09:48:25.469Z"}, depositpaid: true, firstname: "string", lastname: "string", roomid: "#(rooms.roomid)", totalprice: 0}
    When method post


  Scenario Outline: A room is booked for <firstname> <lastname>
    * def rooms = call read("../room/getRooms.feature")
    Given request {bookingdates: {checkin: "<checkin>", checkout: "<checkout>"}, depositpaid: true, firstname: "<firstname>", lastname: "<lastname>", roomid: "#(rooms.roomid)", totalprice: 0}

    Examples:
      | firstname | lastname | checkin                    | checkout                   |
      | "Jane"    | "Doe"    | "2020-06-01T09:48:25.469Z" | "2020-06-01T09:48:25.469Z" |
      | "Johnny"  | "Doom"   | "2022-09-19T09:48:25.469Z" | "2022-09-19T09:48:25.469Z" |
