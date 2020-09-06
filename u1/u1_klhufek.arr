include image

overlay(
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