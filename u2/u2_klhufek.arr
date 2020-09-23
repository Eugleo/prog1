include image

1. repeat(n :: int, txt :: string) -> string
2. čáru
3. ve většině jazyků by bylo "-" bráno jako odčítání, v pyretu se matematické operace oddělují mezerami

bg = rectangle(200, 125, "solid", "red")
yellow-circle = circle(20, "solid", "yellow")
red-circle = circle(27, "solid", "red")
side-triangle = isosceles-triangle(100, 15, "solid", "yellow")
middle-triangle = isosceles-triangle(75, 15, "solid", "yellow")
diagonal-triangle-1 = triangle-ass(15, 90, 125, "solid", "yellow")
diagonal-triangle-2 = triangle-ass(15, 125, 90, "solid", "yellow")

overlay(
  overlay(yellow-circle,
    overlay-xy(
      overlay-xy(
        overlay-xy(
          overlay-xy(
            overlay-xy(
              overlay-xy(
                overlay-xy(
                  overlay-xy(
                    red-circle,
                    -73, 14,
                    rotate(270, side-triangle)
                    ),
                  101, 14,
                  rotate(90, side-triangle)
                  ),
                89, 16,
                middle-triangle
                ),
              89, -36,
              rotate(180, middle-triangle)
              ),
            93, 60.5,
            rotate(-31, diagonal-triangle-1)
            ),
          93, 0,
          rotate(46.5, diagonal-triangle-2)
          ),
        0, 0,
        flip-horizontal(rotate(46.5, diagonal-triangle-2))
        ),
      0, 60.5,
      flip-horizontal(rotate(-31, diagonal-triangle-1))
      )
    ),
  bg
  )
