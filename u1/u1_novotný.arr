include color
include image
"Tohle je vlajka Nepálu"
overlay-xy(
  crop(0, 50, 70, 15, right-triangle(90,88,"solid", "crimson")),
  -10,-150,
  overlay-align("left", "top",
    overlay-xy(
      overlay-xy(
        rectangle(55, 15, "solid", "white"),
        -25, -43, 
        overlay-xy(
          rotate(11, star-polygon(11.5, 16,6, "solid", "white")), 
          -24, -9, 
          overlay-xy(
            crop(0, 52, 104, 52, circle(52, "solid", "crimson")),
            2, 16,
            crop(0, 50, 100, 50, circle(50, "solid", "white"))
            )
          )
        ),
      -20, -80, 
      overlay(
        right-triangle(240,140 , "solid", "crimson"),
        right-triangle(270, 160, "solid", color(55, 55, 210, 1))
        )
      ),
    overlay-align("left", "bottom",
      overlay-xy(
        star-polygon(26, 12, 4, "solid", "white"),
        -20, -150,
        overlay(
          right-triangle(230, 260, "solid", "crimson"),
          right-triangle(260, 290, "solid", color(55, 55, 210, 1))
          )
        ),
      rectangle(270, 360, "solid", "transparent")
      )
    )
  )



