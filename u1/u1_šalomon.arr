include image
text("Svatá Lucie - Postup", 40,"sky blue")
overlay-xy(isosceles-triangle(85, 35, "solid", "white"),-80, -10,rectangle(200,100,"solid", "sky-blue"))
overlay-onto-offset(isosceles-triangle(85, 47, "solid", "white"),"middle","middle",0,0,rectangle(200,100,"solid", "sky-blue"), "middle", "middle")
overlay-onto-offset(overlay-align("middle","bottom",triangle(45,"solid", "yellow"), isosceles-triangle(85, 47, "solid", "white")),"middle","middle",0,0,rectangle(200,100,"solid", "sky-blue"), "middle", "middle")
overlay-onto-offset(overlay-align("middle","bottom",isosceles-triangle(53,80,"solid", "yellow"), isosceles-triangle(85, 47, "solid", "white")),"middle","middle",0,0,rectangle(200,100,"solid", "sky-blue"), "middle", "middle")
overlay-onto-offset(overlay-align("middle","bottom",underlay-align("middle","bottom",isosceles-triangle(73,47, "solid", "black"),isosceles-triangle(53,80,"solid", "gold")), isosceles-triangle(85, 47, "solid", "white")),"middle","middle",0,0,rectangle(200,100,"solid", "sky-blue"), "middle", "middle")
text("Svatá Lucie - Výsledek", 50, "sky blue")
overlay-onto-offset(overlay-align("middle","bottom",underlay-align("middle","bottom",isosceles-triangle(146,47, "solid", "black"),isosceles-triangle(106,80,"solid", "gold")), isosceles-triangle(170, 47, "solid", "white")),"middle","middle",0,0,rectangle(400,200,"solid", "sky-blue"), "middle", "middle")

text("Súdán - Postup", 40, "black")
include image
overlay-align(
  "left", "middle",
  rotate(
    30,
    triangle(197, "solid", "dark green")),
  above(
    rectangle(400, 66, "solid", "crimson"),
    above(
      rectangle(400, 66, "solid", "white"),
      rectangle(400, 66, "solid", "black"))))