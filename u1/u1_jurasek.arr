include image
overlay-xy(star-polygon(25, 5, 2, "solid", "white"),
  -130, -15,
  overlay-xy(rotate(180, star-polygon(25, 5, 2, "solid", "white")),
    -130, -145,
    overlay-xy(rotate(40, star-polygon(25, 5, 2, "solid", "white")),
      -190, -83,
      overlay-xy(rotate(320, star-polygon(25, 5, 2, "solid", "white")),
        -70, -83,
        rectangle(300, 200, "solid", "sky-blue")
        ))))


above(rectangle(300, 20, "solid", "white"),
  above(rectangle(300, 35, "solid", "medium-blue"),
    above(overlay(star-polygon(51, 6, 2, "outline", "medium-blue"),
        overlay(star-polygon(49, 6, 2, "outline", "medium-blue"),
          overlay(star-polygon(47, 6, 2, "outline", "medium-blue"),
            overlay(star-polygon(45, 6, 2, "outline", "medium-blue"),
              overlay(star-polygon(43, 6, 2, "outline", "medium-blue"),
                overlay(star-polygon(41, 6, 2, "outline", "medium-blue"),
                  rectangle(300, 120, "solid", "white")
                  )))))),
      above(rectangle(300, 35, "solid", "medium-blue"),
        (rectangle(300, 20, "solid", "white")
            )))))