include image


#Vlajka se třemi pruhy
fun triple-stripe-flag(
    top :: String,
    mid :: String,
    bot :: String) -> Image:
  doc: "Vytvoří vlajku s třemi pruhy"
  above(
    rectangle(
      50, 10,
      "solid",
      top),
    above(
      rectangle(
        50, 10,
        "solid",
        mid),
      rectangle(
        50, 10,
        "solid",
        bot)))
end

#Rakousko
Austria-flag = triple-stripe-flag(
  "red",
  "white",
  "red")


#1. úkol

fun add-pole(
    flag :: Image) -> Image:
  doc: "Přidá stožár k vlajce"
  
  pole = rectangle(
    5,
    130,
    "solid",
    "black")
  
  beside-align("top",
    pole,
    flag)
end
  


#2. úkol

fun
  add-pole-position(
    flag :: Image,
    Position-in-percentage :: Number) -> Image:
  doc: "Přidá stožár a umístí vlajku na daných procentech."
  
  x = (100 - Position-in-percentage) * (100 / 100)
  pole = rectangle(
    5,
    130,
    "solid",
    "black")
  
  
  overlay-xy(pole,
    5, x,
    flag)
end


#3. úkol

fun custom-pole-with-flag(
    flag :: Image,
    w-pole :: Number,
    h-pole :: Number,
    Position-in-percentage :: Number) -> Image :
  doc: "Přidá stožár s zadanou velikostí a vlajku."
  
  x = (100 - Position-in-percentage) * ((h-pole - 30) / 100)
  pole = rectangle(
    w-pole,
    h-pole,
    "solid",
    "black")
  
  overlay-xy(pole,
    w-pole, x,
    flag)
  
end
  


  
  