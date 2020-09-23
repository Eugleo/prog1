include image
import lists as L
#Greece
rect_white = rectangle(100, 7, "solid", "white")
rect_blue = rectangle(100, 7, "solid", "royal-blue")
greece_detail =
 overlay(
  overlay(
    rectangle(35, 7, "solid", "white"),
    rectangle(7, 35, "solid", "white")),
    square(35, "solid", "royal-blue"))

greece-flag = frame(
  overlay-xy(
  greece_detail,
  0, 0,
  above(
    above(
      above(
        above(
          above(
            above(
              above(
                above(
                  rect_blue,
                  rect_white),
                rect_blue),
              rect_white),
            rect_blue),
          rect_white),
        rect_blue),
      rect_white),
      rect_blue)))


fun cost(
    pen-count :: Number,
    engraving :: String) -> Number:
  doc: "Spočítá cenu za objednaná pera a gravírování"
  (pen-count * 20) + (pen-count * string-length(engraving) * 5)
where:
  cost(
    0,
    "String") is 0
end

#Úkol:
#1
fun add-pole(flag :: Image) -> Image:
  pole = rectangle(5, 300, "solid", "gray")
  beside-align("top", pole, flag)
end

#2
fun add-pole-perc(
    flag :: Image,
    percentage :: Number) -> Image:
  y = (100 - percentage) * ((300 - 63) / 100)
  pole = rectangle(5, 300, "solid", "gray")
  overlay-xy(pole, 5, y, flag)
end

#3
fun add-custom-pole-perc(
    flag :: Image,
    percentage :: Number,
    pole-width :: Number,
    pole-height :: Number) -> Image:
  doc: "Creates a pole and hangs flag in a percentage height that is chosen by user."
  y = (100 - percentage) * ((pole-height - 63) / 100)
    pole = rectangle(
    pole-width,
    pole-height,
    "solid",
    "gray")
  overlay-xy(
    pole,
    pole-width,
    y,
    flag)
end

add-custom-pole-perc(greece-flag, 0, 5, 300)

#
#
#

red-square = square(50, "solid", "red")

#3
fun multiply-h(
    image :: Image) -> Image:
  frame(
    beside(frame(image), frame(image)))
end
#4
fun multiply-v(
    image :: Image) -> Image:
  frame(
    above(frame(image), frame(image)))
end
#5
fun multiply-hv(
    image :: Image) -> Image:
  frame(
    above(
      beside(frame(image), frame(image)),
      beside(frame(image), frame(image))))
end

fun multiply-hv-2(
    image :: Image) -> Image:
  multiply-v(multiply-h(image))
end

