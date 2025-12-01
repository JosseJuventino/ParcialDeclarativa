pelicula(avengers1).
pelicula(avengers2).

titulo(avengers1, 'The Avengers').
titulo(avengers2, 'Avengers: Age of Ultron').

anio(avengers1, 2012).
anio(avengers2, 2015).

personaje(iron_man).
personaje(captain_america).
personaje(thor).
personaje(hulk).
personaje(black_widow).
personaje(hawkeye).
personaje(nick_fury).
personaje(maria_hill).
personaje(phil_coulson).
personaje(falcon).
personaje(war_machine).
personaje(wanda).
personaje(pietro).
personaje(vision).
personaje(loki).
personaje(ultron).


nombre(iron_man,         'Tony Stark / Iron Man').
nombre(captain_america,  'Steve Rogers / Capitán América').
nombre(thor,             'Thor').
nombre(hulk,             'Bruce Banner / Hulk').
nombre(black_widow,      'Natasha Romanoff / Black Widow').
nombre(hawkeye,          'Clint Barton / Hawkeye').

nombre(nick_fury,        'Nick Fury').
nombre(maria_hill,       'Maria Hill').
nombre(phil_coulson,     'Phil Coulson').
nombre(falcon,           'Sam Wilson / Falcon').
nombre(war_machine,      'James Rhodes / War Machine').

nombre(wanda,            'Wanda Maximoff / Scarlet Witch').
nombre(pietro,           'Pietro Maximoff / Quicksilver').
nombre(vision,           'Vision').

nombre(loki,             'Loki').
nombre(ultron,           'Ultron').


tipo(iron_man,        heroe).
tipo(captain_america, heroe).
tipo(thor,            heroe).
tipo(hulk,            heroe).
tipo(black_widow,     heroe).
tipo(hawkeye,         heroe).

tipo(nick_fury,       apoyo).
tipo(maria_hill,      apoyo).
tipo(phil_coulson,    apoyo).
tipo(falcon,          heroe).
tipo(war_machine,     heroe).

tipo(wanda,           heroe).
tipo(pietro,          heroe).
tipo(vision,          heroe).

tipo(loki,            villano).
tipo(ultron,          villano).

aparece_en(iron_man,        avengers1).
aparece_en(captain_america, avengers1).
aparece_en(thor,            avengers1).
aparece_en(hulk,            avengers1).
aparece_en(black_widow,     avengers1).
aparece_en(hawkeye,         avengers1).

aparece_en(nick_fury,       avengers1).
aparece_en(maria_hill,      avengers1).
aparece_en(phil_coulson,    avengers1).
aparece_en(loki,            avengers1).

aparece_en(iron_man,        avengers2).
aparece_en(captain_america, avengers2).
aparece_en(thor,            avengers2).
aparece_en(hulk,            avengers2).
aparece_en(black_widow,     avengers2).
aparece_en(hawkeye,         avengers2).

aparece_en(nick_fury,       avengers2).
aparece_en(war_machine,     avengers2).
aparece_en(falcon,          avengers2).

aparece_en(wanda,           avengers2).
aparece_en(pietro,          avengers2).
aparece_en(vision,          avengers2).
aparece_en(ultron,          avengers2).

miembro_avenger(iron_man,        avengers1).
miembro_avenger(captain_america, avengers1).
miembro_avenger(thor,            avengers1).
miembro_avenger(hulk,            avengers1).
miembro_avenger(black_widow,     avengers1).
miembro_avenger(hawkeye,         avengers1).

miembro_avenger(iron_man,        avengers2).
miembro_avenger(captain_america, avengers2).
miembro_avenger(thor,            avengers2).
miembro_avenger(hulk,            avengers2).
miembro_avenger(black_widow,     avengers2).
miembro_avenger(hawkeye,         avengers2).
miembro_avenger(vision,          avengers2).
miembro_avenger(wanda,           avengers2). 
villano_principal(loki,   avengers1).
villano_principal(ultron, avengers2).

aparece_en_ambas(Personaje) :-
    aparece_en(Personaje, avengers1),
    aparece_en(Personaje, avengers2).

avenger_heroe_en(Personaje, Pelicula) :-
    miembro_avenger(Personaje, Pelicula),
    tipo(Personaje, heroe).

nombre_o_id(Id, Nombre) :-
    nombre(Id, Nombre), !.
nombre_o_id(Id, Id).
