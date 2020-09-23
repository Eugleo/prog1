include color
include image

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

polee = crop(0,29,441,973,image-url("https://obchod.resinovemodely.cz/fotky36789/fotos/36789_366__vyr_365stozar-VVN-3.jpg"))

# Tohle je vlajka:
flag-nepal = overlay-xy(
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

fun on-pole(flag :: Image):

  doc: "This hangs your flag on a pole"

  flag-on-pole = overlay-xy(
    rotate(4, flag),
    -238,-65,
    polee)
  flag-on-pole

end

fun pole-with-height(flag :: Image, height :: Number):

  doc: "This hangs your flag on a pole in a height"

  #Calculates how much 1 percent is:
  max-height = -50
  min-height = -488
  total = max-height - min-height
  total-prc = total / 100

  to-height = min-height + (height * total-prc)

  #The image:
  flag-on-pole = overlay-xy(
    rotate(3.6, flag),
    (-269 + ((height / 100) * 24)),
    to-height,
    polee
    )
  flag-on-pole

end

fun sized-pole-flag(flag :: Image, height :: Number, pole-height :: Number):
  # Height in percentage, pole-height in pixels

  doc: "This hangs your flag on a pole of a size in a height."

  #Makes your flag fit:
  x = image-height(flag) / 200
  custom-flag = scale-xy( 1 / x, 1 / x, flag)
  
  #Devides the pole:
  top-part = crop(0,0,441,65, polee)
  middle-part = crop(0,65,441,627, polee)
  bottom-part = crop(0,692,441,332, polee)
  
  #How many times is the pole higher:
  the-factor = pole-height / image-height(middle-part)
  
  sized-middle-part = scale-xy(1, the-factor, middle-part)

  #Calculates how much 1 percent is:
  min-height = ((-420 - image-height(custom-flag)) * the-factor) + image-height(custom-flag)
  total = 0 - min-height
  total-prc = total / 100

  to-height = min-height + (height * total-prc)

  #Oh yes, it's all coming together...
  flag-on-pole = 
    overlay-xy(
      top-part,
      0, 65,
      overlay-xy(
        (overlay-xy(
            rotate((3.6 / the-factor), custom-flag),
            (-269 + ((height / 100) * 27)),
            to-height,
            sized-middle-part
            )),
        0, image-height(sized-middle-part),
        bottom-part
        )
      )
  flag-on-pole
  
end

sized-pole-flag(flag-nepal, 0, 5973)

fun on-pole-2(flag :: Image):

  doc: "-,,-"

  sized-pole-flag(flag, 100, 973)
  
end

on-pole-2(flag-nepal)

fun pole-with-height-2(flag :: Image, height :: Number):

  doc: "This hangs your flag on a pole in a height"

  sized-pole-flag(flag, height, 973)

end

pole-with-height-2(flag-nepal, 50)