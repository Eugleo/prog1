include image
#Polish flag
polish-flag = frame(above(rectangle(100, 30, "solid", "white"), rectangle(100, 30, "solid", "red")))

#Function 1.
fun add-pole(flag :: Image):
  pole = rectangle(5, 400, "solid", "brown")
  beside-align("top",pole, flag)
end

#Function 2.
fun add-on-percentage(flag :: Image, percentage :: Number):
  pole = rectangle(5, 400, "solid", "brown")
  flag-height = (100 - percentage) * ((400 - image-height(flag)) / 100)
  overlay-xy(pole, 5, flag-height, flag)
end

#Function 3.
fun add-on-percentage-and-pole-dimesions(
    flag :: Image, 
    percentage :: Number, 
    pole-width :: Number, 
    pole-height :: Number):
  doc: "Creates flag hanged on a pole in percentile height of the pole with chosen dimensions."
  flag-height = (100 - percentage) * ((pole-height - image-height(flag)) / 100)
  pole = rectangle(
    pole-width, 
    pole-height, 
    "solid", "brown")
  overlay-xy(
    pole, 
    pole-width, 
    flag-height, 
    flag)
end

#Bonusové úkoly
#Úkol č.3
fun multiply-h(img :: Image):
  beside(frame(img),frame(img))
end

#Úkol č.4
fun multiply-v(img :: Image):
  below(frame(img),frame(img))
end

#Úkol č.5
fun multiply-vh(img :: Image):
  below(beside(frame(img),frame(img)),beside(frame(img),frame(img)))
end