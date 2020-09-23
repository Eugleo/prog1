#Praktická část

include image

hor_cast1 = rectangle(50, 10,"solid","red")
str_cast1 = overlay(
  star(5,"solid","black"),
  (rectangle(50, 10,"solid","yellow")))
spo_cast1 = rectangle(50, 10,"solid","darkgreen")
    


above(hor_cast1, above(str_cast1, spo_cast1))



#above(rectangle(50, 10,"solid","red"), overlay(star(5,"solid","black"), above(rectangle(50, 10,"solid","yellow"), rectangle(50, 10,"solid","darkgreen"))))


hor_cast2 = rectangle(50, 10,"solid","red")
str_cast2 = underlay-xy(
  rectangle(50, 10,"solid","white"),
  15, 2,
  (underlay-xy(
      star(5,"solid","darkgreen"),
      12, 0,
      star(5,"solid","darkgreen"))))
spo_cast2 = rectangle(50, 10,"solid","black")
  
 
  
above(hor_cast2, above(str_cast2, spo_cast2))
  


#above(rectangle(50, 10,"solid","red"), above(underlay-xy(rectangle(50, 10,"solid","white"),15, 2,(underlay-xy(star(5,"solid","darkgreen"),12, 0,star(5,"solid","darkgreen")))), rectangle(50, 10,"solid","black")))




#Teoretická část

# 1.) repeat(n::Number, a::String)
# 2.) Udělá dvě čáry a každá bude mít svoje souřadnice x a y. Můžou se i prolínat.
# 3.) Kebab-case se nepoužívá zdůvodu toho, že znázorňuje mínus. V pyretu je ošetřen tím, že když chceme dát "-" tak musíme dat za něho a před něho white space.