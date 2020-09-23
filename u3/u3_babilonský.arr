include image

#1
fun flag-pole(flag :: Image) -> Image:
  pole = rectangle(4, 200, "solid", "brown")
  
  beside-align("top", pole, flag)
end

#2
fun flag-pole-height(flag :: Image, percent :: Number) -> Image:
  pole = rectangle(4, 200, "solid", "brown")
  pinhole = place-pinhole(4, 200, pole)
  calculated-height = (percent / -100) * (200 - image-height(flag))
  
  overlay-onto-offset(
    pinhole,
    "right", "pinhole",
    0, calculated-height,
    flag,
    "left", "bottom")
end

#3
fun custom-flag-pole-height(
    flag :: Image,
    percent :: Number,
    pole-x :: Number,
    pole-y :: Number) -> Image:
  doc: "Vrátí zadanou vlajku se zadanými rozměry stožáru v zadané procentuální výšce stožáru"
  pole = rectangle(pole-x, pole-y, "solid", "brown")
  pinhole = place-pinhole(pole-x, pole-y, pole)
  calculated-height = (percent / -100) * (pole-y - image-height(flag))
  
  overlay-onto-offset(
    pinhole,
    "right", "pinhole",
    0, calculated-height,
    flag,
    "left", "bottom")
end

#4.1
fun flag-pole-v2(flag :: Image) -> Image:
  pole = rectangle(4, 200, "solid", "brown")
  
  custom-flag-pole-height(flag, 100, 4, 200)
end

#4.2
fun flag-pole-height-v2(flag :: Image, percent :: Number) -> Image:
  pole = rectangle(4, 200, "solid", "brown")
  
  custom-flag-pole-height(flag, percent, 4, 200)
end