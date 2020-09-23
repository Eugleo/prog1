#Teoretická část

#1. repeat(x::number, y::string)
#2. Vytvoří čáru která začne v lokaci aX,aY a skončí v lokaci bX,bY.
#3. Asi protože "-" připomíná (nebo je rovnou stejné jako) mínus, v ostatních programech by se to asi snažilo odečíst "case" od "kebab", jenž není definován (definován jako např. kebab=9, case=3). V pyretu tohle jde napsat, protože jestli chcete něco odečítat, musíte dát před a za mínusem mezery (white space, #) (kebab - case). 

#Praktická část

#originál : overlay(rotate(25, star(50, "solid", "white")), overlay-align("left", "middle", rotate(270, isosceles-triangle(200, 60, "solid", "black")), overlay-align("left", "middle", rotate(270, isosceles-triangle(240, 49, "solid", "yellow")), rectangle(400, 200, "solid", "red"))))

include image
white-star=rotate(25,
  star(50, "solid", "white"))
black-triangle=rotate(270,
  isosceles-triangle(200, 60, "solid", "black"))
yellow-triangle=rotate(270,
  isosceles-triangle(240, 49, "solid", "yellow"))
red-rectangle=rectangle(400, 200, "solid", "red")

overlay(white-star,
  overlay-align("left", "middle", black-triangle,
    overlay-align("left", "middle", yellow-triangle,
      red-rectangle)))

# (Připadalo mi to stále dost dlouhé, tak jsem to zkusil ještě více zkrátit)

foreground=overlay(white-star, black-triangle)
background=overlay-align("left", "middle",
  yellow-triangle, red-rectangle)

overlay-align("left", "center", foreground, background)