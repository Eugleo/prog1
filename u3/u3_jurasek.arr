include image

#Flag for testing
white-star = star-polygon(25, 5, 2, "solid", "white")
blue-rectangle = rectangle(300, 200, "solid", "sky-blue")
test-flag = overlay-xy(white-star,-130, -75,blue-rectangle)

pole = rectangle(30, 700, "solid", "dim-gray")

# 1.
fun add-pole(flag :: Image) -> Image:
  
  doc: "Returns a flag on a pole"
  
  beside-align("top", pole, flag)
end


#2.
fun add-pole-percent(flag :: Image, percent-value :: Number) -> Image:
  
  doc: "Returns a flag on a pole in a given height"
  
  pole-height = image-height(pole)
  pole-width = image-width(pole)
  flag-height = image-height(flag)
  minimum-height = (pole-height - flag-height)
  one-percent = minimum-height / 100
  
  overlay-xy(pole, pole-width, minimum-height - (percent-value * one-percent), flag)
end


#3.
fun add-custom-pole-percent(flag :: Image, pole-width :: Number, pole-height :: Number, percent-value:: Number) -> Image:
  
  doc: "Returns a flag on a pole with a given height and width in a given height"
  
  custom-pole = rectangle(pole-width, pole-height, "solid", "dim-gray")
  flag-height = image-height(flag)
  minimum-height = (pole-height - flag-height)
  one-percent = minimum-height / 100
  
  overlay-xy(custom-pole, pole-width, minimum-height - (percent-value * one-percent), flag)
end


#4.
fun add-pole-2(flag :: Image) -> Image:
  
  doc: "Returns a flag on a pole using add-custom-pole-percent()"
  
  add-custom-pole-percent(flag, 30, 700, 100)
end

fun add-pole-percent-2(flag :: Image, percent-value :: Number) -> Image:
  
  doc: "Returns a flag on a pole in a given height using add-custom-pole-percent()"
  
  add-custom-pole-percent(flag, 30, 700, percent-value)
end