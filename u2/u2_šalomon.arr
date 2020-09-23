include image
# 1. repeat(x::Number, text::String)->String
# 2. Vytvoří úsečku v souřadnicovém poli s jedním bodem na souřadnicích [aX,aY] a druhým [bX,bY].
# 3. Napadá mě akorát, že "-" je operátor "mínus". Ostatní jazyky by se mohly snažit od sebe odečíst jednotlivé proměnné. V Pyretu je to ošetřeno tím, že operátor musí být oddělen mezerami před i po něm.

#Před
overlay-onto-offset(overlay-align("middle","bottom",underlay-align("middle","bottom",isosceles-triangle(146,47, "solid", "black"),isosceles-triangle(106,80,"solid", "gold")), isosceles-triangle(170, 47, "solid", "white")),"middle","middle",0,0,rectangle(400,200,"solid", "sky-blue"), "middle", "middle")

#Po
blue_rectangle = rectangle(400,200,"solid", "sky-blue")
white_triangle = isosceles-triangle(170, 47, "solid", "white")
yellow_triangle = isosceles-triangle(106,80,"solid", "gold")
black_triangle = isosceles-triangle(146,47, "solid", "black")
triangles = overlay-align(
    "middle","bottom",
    underlay-align(
      "middle","bottom",
      black_triangle,
      yellow_triangle), 
    white_triangle)


overlay-onto-offset(
  triangles,
  "middle","middle",0,0,
  blue_rectangle, 
  "middle", "middle")