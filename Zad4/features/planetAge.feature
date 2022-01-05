Feature: PlanetAge calculator
  Zadaniem klasy jest sprawdzenie czy kalkulator wieku planet poprawnie. Kalkulator powinien obliczyć poprawnie wiek
  planety po podaniu ilości sekund oraz rodzaju planety, dla której ma być obliczony wiek.

  @planetAge
  Scenario: 2134835688 seconds, planet Merkury, return 280.88
    Given Input seconds and planet
    """
    2134835688,Merkury
    """
    When calculate the planet age
    Then the result is 280.88

  @planetAge
  Scenario: 2139995688 seconds, planet Wenus, return 110.23
    Given Input seconds and planet
    """
    2139995688,Wenus
    """
    When calculate the planet age
    Then the result is 110.23

  @planetAge
  Scenario: 1000000000 seconds, planet Ziemia, return 231.69
    Given Input seconds and planet
    """
    1000000000,Ziemia
    """
    When calculate the planet age
    Then the result is 31.69

  @planetAge
  Scenario: 2187943288 seconds, planet Mars, return 36.86
    Given Input seconds and planet
    """
    2187943288,Mars
    """
    When calculate the planet age
    Then the result is 36.86

  @planetAge
  Scenario: 2111111288 seconds, planet Jowisz, return 5.64
    Given Input seconds and planet
    """
    2111111288,Jowisz
    """
    When calculate the planet age
    Then the result is 5.64

  @planetAge
  Scenario: 2185555288 seconds, planet Saturn, return 2.35
    Given Input seconds and planet
    """
    2185555288,Saturn
    """
    When calculate the planet age
    Then the result is 2.35

  @planetAge
  Scenario: 2187770288 seconds, planet Uran, return 0.83
    Given Input seconds and planet
    """
    2187770288,Uran
    """
    When calculate the planet age
    Then the result is 0.83

  @planetAge
  Scenario: 2100523388 seconds, planet Neptun, return 0.4
    Given Input seconds and planet
    """
    2100523388,Neptun
    """
    When calculate the planet age
    Then the result is 0.4

  @planetAge
  Scenario: 2187770288 seconds, planet asdf, return "Wrong method"
    Given Input seconds and planet
    """
    2187770288,asdf
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge
  Scenario: 2187770288 seconds, planet uran, return "Wrong method"
    Given Input seconds and planet
    """
    2187770288,uran
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge
  Scenario: 2187770288 seconds, planet ziEmIa, return "Wrong method"
    Given Input seconds and planet
    """
    2187770288,ziEmIa
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge
  Scenario: abc seconds, planet Uran, return "Wrong type of data"
    Given Input seconds and planet
    """
    abc,Uran
    """
    When calculate the planet age
    Then the result is Wrong type of data

  @planetAge
  Scenario: 2000 seconds, planet 112, return "Wrong method"
    Given Input seconds and planet
    """
    2000,112
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge
  Scenario: 2000 seconds, planet -112, return "Wrong method"
    Given Input seconds and planet
    """
    2000,-112
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge
  Scenario: 2000 seconds, planet 1.12, return "Wrong method"
    Given Input seconds and planet
    """
    2000,1.12
    """
    When calculate the planet age
    Then the result is Wrong method

  @planetAge
  Scenario: 2000 seconds, planet -1.12, return "Wrong method"
    Given Input seconds and planet
    """
    2000,-1.12
    """
    When calculate the planet age
    Then the result is Wrong method