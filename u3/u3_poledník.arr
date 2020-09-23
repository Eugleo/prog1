include image
include color


#Flag with three stripes

fun triple-stripe-flag(
    left-side :: String,
    mid :: String,
    right-side :: String) -> Image:
  doc: "Vytvoří vlajku se třemi pruhy"
  
  beside(
    rectangle(
      30,60,"solid",left-side),
    beside(
      rectangle(
        30,60,"solid",mid),
      rectangle(
        30,60,"solid",right-side)))
end

#France

france-flag = triple-stripe-flag(
  "blue",
  "white",
  "red")


#1.

fun add-pole(
    flag :: Image) -> Image:
  doc: "K vlajce je přidán stožár"
  
  pole = rectangle(
    6,210,"solid","gray")
  
  beside-align(
    "top",pole,flag)
end
  


#2.

fun
  add-pole-position(
    flag :: Image,
    Position-in-percentage :: Number) -> Image:
  doc: "K vlajce je přidán stožár, hodnoty jsou pouze 0-100"
  
  x = (100 - Position-in-percentage) * (100 / 100)
  pole = rectangle(
    6,210,"solid","gray")
  
  
  overlay-xy(
    pole,6, x,flag)
end


#3.

fun custom-pole-with-flag(
    flag :: Image,
    w-pole :: Number,
    h-pole :: Number,
    Position-in-percentage :: Number) -> Image :
  doc: "K vlajce je přidán stožár se zadanou velikostí"
  
  x = (100 - Position-in-percentage) * ((h-pole - 30) / 100)
  pole = rectangle(
    w-pole,
    h-pole,
    "solid","gray")
  
  overlay-xy(
    pole,w-pole, x,flag)
  
  end

add-pole(france-flag)