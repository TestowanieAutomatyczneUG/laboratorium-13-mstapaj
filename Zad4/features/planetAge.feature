Feature: PlanetAge calculator
  Zadaniem klasy jest sprawdzenie czy kalkulator wieku planet poprawnie. Kalkulator powinien obliczyć poprawnie wiek
  planety po podaniu ilości sekund oraz rodzaju planety, dla której ma być obliczony wiek.

  @planetAge @and
  Scenario: 2134835688 seconds, planet Merkury, return 280.88
    Given Input seconds and planet (and)
    And seconds 2134835688
    And planet Merkury
    When calculate the planet age
    Then the result is 280.88

  @planetAge @and
  Scenario: 2139995688 seconds, planet Wenus, return 110.23
    Given Input seconds and planet (and)
    And seconds 2139995688
    And planet Wenus
    When calculate the planet age
    Then the result is 110.23

  @planetAge @and
  Scenario: 1000000000 seconds, planet Ziemia, return 231.69
    Given Input seconds and planet (and)
    And seconds 1000000000
    And planet Ziemia
    When calculate the planet age
    Then the result is 31.69

  @planetAge @and
  Scenario: 2187943288 seconds, planet Mars, return 36.86
    Given Input seconds and planet (and)
    And seconds 2187943288
    And planet Mars
    When calculate the planet age
    Then the result is 36.86

  @planetAge @and
  Scenario: 2111111288 seconds, planet Jowisz, return 5.64
    Given Input seconds and planet (and)
    And seconds 2111111288
    And planet Jowisz
    When calculate the planet age
    Then the result is 5.64

  @planetAge @and
  Scenario: 2185555288 seconds, planet Saturn, return 2.35
    Given Input seconds and planet (and)
    And seconds 2185555288
    And planet Saturn
    When calculate the planet age
    Then the result is 2.35

  @planetAge @and
  Scenario: 2187770288 seconds, planet Uran, return 0.83
    Given Input seconds and planet (and)
    And seconds 2187770288
    And planet Uran
    When calculate the planet age
    Then the result is 0.83

  @planetAge @and
  Scenario: 2100523388 seconds, planet Neptun, return 0.4
    Given Input seconds and planet (and)
    And seconds 2100523388
    And planet Neptun
    When calculate the planet age
    Then the result is 0.4

  @planetAge @and
  Scenario: 2187770288 seconds, planet asdf, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2187770288
    And planet asdf
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @and
  Scenario: 2187770288 seconds, planet uran, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2187770288
    And planet uran
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @and
  Scenario: 2187770288 seconds, planet ziEmIa, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2187770288
    And planet zieEmIa
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @and
  Scenario: abc seconds, planet Uran, return "Wrong type of data"
    Given Input seconds and planet (and)
    And seconds abc
    And planet Uran
    When calculate the planet age
    Then the result is Wrong type of data

  @planetAge @and
  Scenario: 2000 seconds, planet 112, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2000
    And planet 112
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @and
  Scenario: 2000 seconds, planet -112, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2000
    And planet -112
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @and
  Scenario: 2000 seconds, planet 1.12, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2000
    And planet 1.12
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @and
  Scenario: 2000 seconds, planet -1.12, return "Wrong method"
    Given Input seconds and planet (and)
    And seconds 2000
    And planet -1.12
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: 2134835688 seconds, planet Merkury, return 280.88
    Given Input seconds and planet (string) 
    """
    2134835688,Merkury
    """
    When calculate the planet age
    Then the result is 280.88

  @planetAge @inString
  Scenario: 2139995688 seconds, planet Wenus, return 110.23
    Given Input seconds and planet (string)
    """
    2139995688,Wenus
    """
    When calculate the planet age
    Then the result is 110.23

  @planetAge @inString
  Scenario: 1000000000 seconds, planet Ziemia, return 231.69
    Given Input seconds and planet (string)
    """
    1000000000,Ziemia
    """
    When calculate the planet age
    Then the result is 31.69

  @planetAge @inString
  Scenario: 2187943288 seconds, planet Mars, return 36.86
    Given Input seconds and planet (string)
    """
    2187943288,Mars
    """
    When calculate the planet age
    Then the result is 36.86

  @planetAge @inString
  Scenario: 2111111288 seconds, planet Jowisz, return 5.64
    Given Input seconds and planet (string)
    """
    2111111288,Jowisz
    """
    When calculate the planet age
    Then the result is 5.64

  @planetAge @inString
  Scenario: 2185555288 seconds, planet Saturn, return 2.35
    Given Input seconds and planet (string)
    """
    2185555288,Saturn
    """
    When calculate the planet age
    Then the result is 2.35

  @planetAge @inString
  Scenario: 2187770288 seconds, planet Uran, return 0.83
    Given Input seconds and planet (string)
    """
    2187770288,Uran
    """
    When calculate the planet age
    Then the result is 0.83

  @planetAge @inString
  Scenario: 2100523388 seconds, planet Neptun, return 0.4
    Given Input seconds and planet (string)
    """
    2100523388,Neptun
    """
    When calculate the planet age
    Then the result is 0.4

  @planetAge @inString
  Scenario: 2187770288 seconds, planet asdf, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2187770288,asdf
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: 2187770288 seconds, planet uran, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2187770288,uran
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: 2187770288 seconds, planet ziEmIa, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2187770288,ziEmIa
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: abc seconds, planet Uran, return "Wrong type of data"
    Given Input seconds and planet (string)
    """
    abc,Uran
    """
    When calculate the planet age
    Then the result is Wrong type of data

  @planetAge @inString
  Scenario: 2000 seconds, planet 112, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2000,112
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: 2000 seconds, planet -112, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2000,-112
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: 2000 seconds, planet 1.12, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2000,1.12
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge @inString
  Scenario: 2000 seconds, planet -1.12, return "Wrong method"
    Given Input seconds and planet (string)
    """
    2000,-1.12
    """
    When calculate the planet age
    Then the result is Wrong method