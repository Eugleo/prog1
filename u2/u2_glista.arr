include image
include color

#1
#repeat(x::Number, y::String) -> String

#2
#line(
# aX :: Number,
# aY :: Number,
# bX :: Number,
# bY :: Number) -> Image

#  "line" je funkce pro tři argumenty, tudíž by ti maximálně vyhodila error. Takhle je správně:

#line :: (
#x :: Number,
#y :: Number,
#color :: ImageColor) -> Image

#Napadlo mě že by to mělo znázornit dvě na sobě nezávislé úsečky, ale tam by se použila funkce overlay.
#Aby se úsečka mohla napsat podle tvojí předlohy musíš pužít příkaz add-line, nebo scene-line, které však vyžadují k realizaci úsečky ještě image, na který se položí, viz:

# add-line :: (
#  img :: Image,
#  x1 :: Number,
#  y1 :: Number,
#  x2 :: Number,
#  y2 :: Number,
#  color :: ImageColor) -> Image


#3
# Aby "-" v pyretu znaamenalo "mínus" (nebo cokoliv to má znamenat), musí být z každé strany odděleno whitespacem. V některých jiných jazycích zřejmě nemusí když se kebab-case nepoužívá.


#VLAJKY
#Denmark - Before:
overlay(
  underlay(
    overlay-xy(
      rectangle(1000, 160, "solid", "white"),
      300, -220, 
      rectangle(160, 600, "solid", "white")),
    overlay-xy(
      rectangle(1000, 80, "solid", "dark-blue"),
      340, -260,
      rectangle(80, 600, "solid", "dark-blue"))),
  rectangle(1000, 600, "solid", "red"))

#Změny:
white_cross = overlay-xy(
      rectangle(1000, 160, "solid", "white"),
      300, -220, 
      rectangle(160, 600, "solid", "white"))
blue_cross = overlay-xy(
      rectangle(1000, 80, "solid", "dark-blue"),
      340, -260,
      rectangle(80, 600, "solid", "dark-blue"))
red_rect = rectangle(1000, 600, "solid", "red")

#Denmark - After:
overlay(
  overlay(
    blue_cross,
    white_cross),
  red_rect)