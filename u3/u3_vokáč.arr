include image

# tady máte předudělané vlajky pokud chcete

flag1 = overlay(rotate(25, star(50, "solid", "white")), overlay-align("left", "middle", rotate(270, isosceles-triangle(200, 60, "solid", "black")), overlay-align("left", "middle", rotate(270, isosceles-triangle(240, 49, "solid", "yellow")), rectangle(400, 200, "solid", "red"))))

flag2 = overlay-align("left", "bottom", rotate(270, overlay-align("left", "bottom", right-triangle(200, 300, "solid", "green"), right-triangle(230, 330, "solid", "yellow"))), overlay-align("right", "bottom", rotate(90, overlay-align("left", "bottom", right-triangle(200, 300, "solid", "dodger-blue"), right-triangle(230, 330, "solid", "yellow"))), rectangle(400, 230, "solid", "black")))

flag3 = above(above(rectangle(250, 40, "solid", "red"), rectangle(250, 40, "solid", "yellow")), rectangle(250, 40, "solid", "black"))

flag4 = rectangle(100, 50, "solid", "black")

#1 ) add-flag-pole (a add-flag-pole2)

fun add-flag-pole(flag :: Image) -> Image:
 doc: "adds a pole to a a flag"
  pole= rectangle(30, 500, "solid", "brown")
    underlay-xy(pole, 30, 0, flag)
end

# zkuil jsem upravit svůj bývalý pokus o if funkci, která zvětší obrázek, kdyby byl moc malý

fun add-flag-pole2(flag):
  pole= rectangle(30, 500, "solid", "brown")
  if (image-height(flag) < 100):
    underlay-xy(pole, 30, 0, scale(5, flag))
else:
    (underlay-xy(rectangle(30, 500, "solid", "brown"), 30, 0, flag)) 
end
end

#2 ) add-flag-pole-y

fun add-flag-pole-y(flag :: Image, flag-position :: Number) -> Image:
  pole = rectangle(30, 500, "solid", "brown")
  percent = ((500 - image-height(flag)) - ((flag-position / 100) * (500 - image-height(flag))))
  underlay-xy(pole, 30, percent, flag)
end

#3 ) add-custom-flag-pole-y

fun add-custom-flag-pole-y(pole-size-x :: Number, pole-size-y :: Number, flag :: Image, flag-position :: Number) -> Image:
  doc: "creates a custom pole to your flag and hangs it up in a percentual location" 
  percent = ((pole-size-y - image-height(flag)) - ((flag-position / 100) * (pole-size-y - image-height(flag))))
  
  underlay-xy(rectangle(pole-size-x, pole-size-y, "solid", "brown"), pole-size-x, percent, flag)
end

# 4 ) nevím jestli jsem to pochopil dobře 
#add-custom-flag-pole-y(30, 500, flag1, 100)