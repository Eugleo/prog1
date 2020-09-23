include color
include image

#Teoretická část:
"   Odpověď1: repeat(                            "
"                 n :: Number,                                "
"                 text :: text) -> text                       "
""
"   Odpověď2: Udělá to čáru od prvních dvou XY souřadnic do druhých XY     "
""
"   Odpověď3: Protože by ten jazyk chtěl odečítat každé slovo; je to o-"
"            šetřeno tím, že když chcem mínusovat, tak to musíme odmezerovat."

# Praktická část:
s = "solid"
redd = "crimson"
bluee = color(55, 55, 210, 1)

tria-up = overlay(
  right-triangle(240,140 , s, redd),
  right-triangle(270, 160, s, bluee)
  )

tria-down = overlay(
  right-triangle(230, 260, s, redd),
  right-triangle(260, 290, s, bluee)
  )

moon = overlay-xy(
  crop(0, 52, 104, 52, circle(52, s, redd)),
  2, 16,
  crop(0, 50, 100, 50, circle(50, s, "white"))
  )

pattern-up = overlay-xy(
  rectangle(55, 15, s, "white"),
  -25, -43, 
  overlay-xy(
    rotate(11, star-polygon(11.5, 16,6, s, "white")), 
    -24, -9, 
    moon
    )
  )

pattern-down = star-polygon(26, 12, 4, s, "white")
background = rectangle(270, 360, s, "transparent")
redCover = crop(0, 50, 70, 15, right-triangle(90,88, s, redd))

# Tohle už je vlajka:
overlay-xy(
  redCover,
  -10,-150,
  overlay-align("left", "top",
    overlay-xy(
      pattern-up,
      -20, -80, 
      tria-up
      ),
    overlay-align("left", "bottom",
      overlay-xy(
        pattern-down,
        -20, -150,
        tria-down
        ),
      background
      )
    )
  )