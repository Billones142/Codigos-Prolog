padre(padre, hijo).
madre(madre, hijo).
casado(hombre, mujer).

abuelo(Nieto, Abuelo):- padre(Nieto,Padre) ,padre(Madre, Abuelo).
abuelo(Nieto, Abuelo):- madre(Nieto,Padre) ,padre(Madre, Abuelo).

hermana(X, Hermana):- padre(Padre,), madre().

madre(brus, marta).
padre(raul, marcelo).
padre(rita, marcelo).
linda(marta).
linda(rita).
padre(marcelo, juan).
padre(maria, juan).
padre(sergio, padre).
madre(victor, rita).
madre(veronica, rita).

:- initialization(main).
main:-
  write("el abuelo de victor es "),
  abuelo(victor, A),
  write(A),
  nl,
  
  write("el nieto de raul es "),
  abuelo(B),
  write(B),
  nl,
  
  write("la hermana de victor es "),
  hermana(victor),
  
  nl,
  
  write("la hermana de veronica"),
  nl,
  
  write("hija de veronica"),
  nl,
  
  write("está casado con alguien linda"),
  nl,
  
  write("Qué relación familiar tiene las personas lindas"),
  nl,
  
  write("Quiénes son tíos y cuáles son sus sobrinos"),
  nl,
  
  
  halt(0).
