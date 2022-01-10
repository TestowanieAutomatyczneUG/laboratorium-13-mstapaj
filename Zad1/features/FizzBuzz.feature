Feature: FizzBuzz
  Zadaniem klasy jest sprawdzenie czy program FizzBuzz działa poprawnie, czyli jeśli liczba jest podzielna przez 3
  wyświetla Fizz, jeśli jest podzielna przed 5 wyświetla Buzz, a jeśli jest podzielna przez 3 i przez 5 wyświetla
  FizzBuzz. W innym przypadku program powininen zwrócić podaną liczbę.

  Scenario: number 3, should return Fizz
    Given FizzBuzz game
    When I input 3
    Then I get Fizz

  Scenario: number 5, should return Buzz
    Given FizzBuzz game
    When I input 5
    Then I get Buzz

  Scenario: number 15, should return FizzBuzz
    Given FizzBuzz game
    When I input 15
    Then I get FizzBuzz

  Scenario: number 8475, should return FizzBuzz
    Given FizzBuzz game
    When I input 8475
    Then I get FizzBuzz

  Scenario: number 17, should return 17
    Given FizzBuzz game
    When I input 17
    Then I get 17

  Scenario: number 13.123, should return 13.123
    Given FizzBuzz game
    When I input 13.123
    Then I get 13.123

  Scenario: number -17, should return -17
    Given FizzBuzz game
    When I input -17
    Then I get -17

  Scenario: number -35, should return Buzz
    Given FizzBuzz game
    When I input -35
    Then I get Buzz

  Scenario: number -33, should return Fizz
    Given FizzBuzz game
    When I input -33
    Then I get Fizz

  Scenario: number -45, should return FizzBuzz
    Given FizzBuzz game
    When I input -45
    Then I get FizzBuzz

  Scenario: string "abc", should return "Wrong type of given number"
    Given FizzBuzz game
    When I input "abc"
    Then I get "Wrong type of given number"

  Scenario: string "31", should return "Wrong type of given number"
    Given FizzBuzz game
    When I input "31"
    Then I get "Wrong type of given number"

  Scenario: array [], should return "Wrong type of given number"
    Given FizzBuzz game
    When I input array []
    Then I get "Wrong type of given number"

  Scenario: dictionary {}, should return "Wrong type of given number"
    Given FizzBuzz game
    When I input dictionary {}
    Then I get "Wrong type of given number"

  Scenario: type None, should return "Wrong type of given number"
    Given FizzBuzz game
    When I input None
    Then I get "Wrong type of given number"