1. bod
fun hoisting-flag(vlajka):
  beside-align("top", rectangle(15, 250, "solid", "gray"), vlajka)
end

2. bod
include image
fun hoisting-the-flag(
      procento :: Number,
      image1 :: Image):
  
  overlay-xy(
    rectangle(13, 310, "solid", "gray"),
      13, 
      procento * 2, 
      image1)
end

3. bod
fun hoisting-the-flag2(
    velikost :: Number,
    procento :: Number,
    flag :: Image):   
  
  doc: "Bere velikost, umístění vlajky a vlajku a vytvoří vlajku na stožáru"
  
  overlay-xy(
    rectangle(
      13, 
      velikost * 3.1, 
      "solid", 
      "gray"),
    13,
    (((procento / 100) * ((velikost * -3.1) + 110)) + ((velikost * 3.1) - 110)),
    flag)
end

4. bod
1)
fun hoisting-flag3(
    flag :: Image):
    
    hoisting-the-flag2(
      100,
      100,
      flag)  
end
2)
fun hoisting-the-flag4(
      procento :: Number,
      image1 :: Image):
                  
    hoisting-the-flag2(
      procento,
      100,
      flag)                   