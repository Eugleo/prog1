include image

flag-1 = overlay(
  overlay(circle(20, "solid", "yellow"), 
    overlay-xy(
      overlay-xy(
        overlay-xy(
          overlay-xy(
            overlay-xy(
              overlay-xy(
                overlay-xy(
                  overlay-xy(
                    circle(27, "solid", "red"),
                    -73, 14,
                    rotate(270, isosceles-triangle(100, 15, "solid", "yellow"))
                    ),
                  101, 14,
                  rotate(90, isosceles-triangle(100, 15, "solid", "yellow"))
                  ),
                89, 16,
                isosceles-triangle(75, 15, "solid", "yellow")
                ),
              89, -36,
              rotate(180, isosceles-triangle(75, 15, "solid", "yellow"))
              ),
            93, 60.5,
            rotate(-31, triangle-ass(15, 90, 125, "solid", "yellow"))
            ),
          93, 0,
          rotate(46.5, triangle-ass(15, 125, 90, "solid", "yellow"))
          ),
        0, 0,
        flip-horizontal(rotate(46.5, triangle-ass(15, 125, 90, "solid", "yellow")))
        ),
      0, 60.5,
      flip-horizontal(rotate(-31, triangle-ass(15, 90, 125, "solid", "yellow")))
      )
    ), 
  rectangle(200, 125, "solid", "red")
  )

#default pole
pole-height = 500
pole-width = 10
pole = rectangle(pole-width, pole-height, "solid", "black")

#úkol 1
fun hang-flag(flag :: Image) -> Image:
  doc: "Hangs selected flag on a pole"
  overlay-align("left", "top", pole, flag)
end

#example   hang-flag(flag-1)

#úkol 2
fun hang-flag-perc(flag :: Image, height-percentage :: Number) -> Image:
  doc: "Hangs selected flag on a pole in a chosen height entered in percents "
  
  min-height = pole-height - 125

  height =  ((height-percentage / 100) * min-height * -1) + min-height

  overlay-xy(pole, 0, height, flag)
end
#| examples
   hang-flag-perc(flag-1, 100)
   hang-flag-perc(flag-1, 50)
   hang-flag-perc(flag-1, 0)
   hang-flag-perc(flag-1, 78)
|#

#úkol 3
fun hang-flag-sized-pole(flag :: Image, height-percentage :: Number, custom-pole-height :: Number) 
  -> Image:
  doc: "Hangs a selected flag on a pole, with selected size, in a chosen height entered in percents"
  
  custom-pole = rectangle(pole-width, custom-pole-height, "solid", "black")

  min-height = custom-pole-height - 125

  height = ((height-percentage / 100) * min-height * -1) + min-height

  overlay-xy(custom-pole, 0, height, flag)
end
#|
   hang-flag-sized-pole(flag-1, 100, 500)
   hang-flag-sized-pole(flag-1, 0, 500)
   hang-flag-sized-pole(flag-1, 100, 1000)
   hang-flag-sized-pole(flag-1, 00, 1000)
|#

#úkol 4

fun hang-flag-2(flag :: Image) -> Image: 
  doc: "Does the same thing as hang-flag"

  hang-flag-sized-pole(flag, 100, 500)

end

fun hang-flag-perc-2(flag :: Image, height-percentage :: Number) -> Image: 
  doc: "Does the same thing as hang-flag-perc"

  hang-flag-sized-pole(flag, height-percentage, 500)
end