#1 - repeat(
#      n :: number,
#      txt :: String) -> String

#2 - Nejsem si jistý, ale myslím, že neudělá nic. Aby vznikla čára mezi body "a", "b", potřebuje funkce ještě color.

#3 - Většina jazyků kebab-case nepoužívá, protože by mohly pomlčku považovat za pokus o odčítání. V Pyretu je operátor pro odčítání oddělen mezerami.

include image
black-stripe = rectangle(320, 50, "solid", "black")
white-stripe = rectangle(320, 50, "solid", "white")
green-stripe = rectangle(320, 50, "solid", "dark-green")
white-star = radial-star(7, 15, 7, "solid", "white")

background =
  below(
    above(
      white-stripe,
      green-stripe),
    black-stripe)

red-triangle =
  overlay(
    white-star,
    rotate(30,
      triangle(150, "solid", "fire-brick")))

overlay-align("left", "center", red-triangle, background)