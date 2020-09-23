1.) repeat(
      repeats : : Number ,
      txt : : Text ) -> Text

2.) Mohla by vytvářet čáru od bodu umístěného v souřadnicích aX, aY do bodu v bX, bY.

3.) Jazyk by chtěl odečítat písmena či slova takto oddělená. Ochranou je že při odečítání je nutné oddělit "mínus" mezerami.

Praktická

 # Before
beside(
  beside(
    rectangle(60, 110, "solid", "dark-green"), 
    overlay(
      star(20, "solid", "yellow"), 
      rectangle(60, 110, "solid", "red"))), 
  rectangle(60, 110, "solid", "yellow"))

 # After    
hvezdicka = star(20, "solid", "yellow")
stred = rectangle(60, 110, "solid", "red")
levo = rectangle(60, 110, "solid", "dark-green")
pravo = rectangle(60, 110, "solid", "yellow")
Cameroon = beside(
            beside(
              levo, 
              overlay(
                hvezdicka, 
                stred)), 
            pravo)
            
Cameroon