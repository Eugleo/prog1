#|
1.
repeat(
  n :: Number,
  txt :: String) –> String

2.
Nakreslí přímku od souřadnic aX, aX do bX, bY

3.
Protože by to počítač pochopil, jako že chceme odečítat this - is - kebab - case.
V Pyretu musíme psát mezi mínusem a jednotlivými členy mezery.
|#

include image

# Before

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

#After

white-star = star-polygon(25, 5, 2, "solid", "white")
blue-rectangle = rectangle(300, 200, "solid", "sky-blue")

overlay-xy(white-star,
  -130, -15,
  overlay-xy(rotate(180, white-star),
    -130, -145,
    overlay-xy(rotate(40, white-star),
      -190, -83,
      overlay-xy(rotate(320, white-star),
        -70, -83,
        blue-rectangle
        ))))