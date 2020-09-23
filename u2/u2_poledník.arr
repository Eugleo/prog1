#Teoretická část

#1. repeat(n :: Number, a :: String)->String
#2. aX, aY nám vytvoří jeden bod a bX, bY nám vytvoří druhý bod a tyto body se potom spojí 
#3. Kebab-case v Pyretu znamená mínus, a proto se nepoužívá.  Zde je to ošetřeno tak, že před něj a za něj musíme dát white space. 



#Praktická část

include image
include color

#Před_1


#overlay(star(10,"solid","black"),beside(rectangle(33,60,"solid","red"),above(rectangle(80,30,"solid","gold"),rectangle(80,30,"solid","medium-sea-green"))))


#Potom_1

leva_cast = overlay(
  star(10,"solid","black"),
  rectangle(33,60,"solid","red"))
prava_cast = above(
  rectangle(80,30,"solid","gold"),
  rectangle(80,30,"solid","medium-sea-green"))


beside(
  leva_cast,
  prava_cast)




#Před_2


#overlay(star-polygon(5,7,3,"solid","white"),overlay-align("left","middle",rotate(270,triangle(60,"solid","red")),above(rectangle(100,20,"solid","black"),above(rectangle(100,20,"solid","white"),rectangle(100,20,"solid","dark-green")))))


#Potom_2

prouzky = above(
  rectangle(100,20,"solid","black"),
  above(
    rectangle(100,20,"solid","white"),
    rectangle(100,20,"solid","dark-green")))
hvezda = star-polygon(5,7,3,"solid","white")
trojuhelnik = rotate(
  270,triangle(60,"solid","red"))


overlay(
  hvezda,overlay-align(
    "left","middle",trojuhelnik,
    prouzky))






