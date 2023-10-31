juega_en_la_scaloneta(julian).
juega_en_la_scaloneta(messi).
juega_en_la_scaloneta(lautaro).

goleador(haaland).
frances(mbape).

juega_en_inglaterra(haaland).
juega_en_inglaterra(julian).

campeon_del_mundo(julian).
campeon_del_mundo(lautaro).
campeon_del_mundo(messi).

goat(messi).

balon_de_oro(Jugador):- campeon_del_mundo(Jugador), juega_en_la_scaloneta(Jugador), goat(Jugador).

:- initialization(main).
main:- 
  balon_de_oro(X),
  write('El ganador del balon de oro es '),
  write(X),
  halt(0).
