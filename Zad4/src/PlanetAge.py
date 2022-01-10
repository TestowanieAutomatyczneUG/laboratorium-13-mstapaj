class PlanetAge:
    def count(self, sekundy, metoda):
        if (isinstance(sekundy, int) or isinstance(sekundy, float)) and isinstance(metoda, str) and sekundy >= 0:
            ziemskiRok = 31557600
            wynik = ""
            if metoda == "Merkury":
                wynik = sekundy / (ziemskiRok * 0.2408467)
            elif metoda == "Wenus":
                wynik = sekundy / (ziemskiRok * 0.61519726)
            elif metoda == "Ziemia":
                wynik = sekundy / ziemskiRok
            elif metoda == "Mars":
                wynik = sekundy / (ziemskiRok * 1.8808158)
            elif metoda == "Jowisz":
                wynik = sekundy / (ziemskiRok * 11.862615)
            elif metoda == "Saturn":
                wynik = sekundy / (ziemskiRok * 29.447498)
            elif metoda == "Uran":
                wynik = sekundy / (ziemskiRok * 84.016846)
            elif metoda == "Neptun":
                wynik = sekundy / (ziemskiRok * 164.79132)
            if wynik == "":
                return "Wrong method"
            else:
                return round(wynik, 2)
        else:
            return "Wrong type of data"
