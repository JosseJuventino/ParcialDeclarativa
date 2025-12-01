:- initialization(iniciar).

iniciar :-
    writeln('=== Mini Calculadora en Prolog ==='),
    ciclo_principal.

ciclo_principal :-
    mostrar_menu_principal,
    write('Selecciona una opcion: '),
    read(Seleccion),
    manejar_opcion(Seleccion).

mostrar_menu_principal :-
    nl,
    writeln('1) Sumar'),
    writeln('2) Restar'),
    writeln('3) Multiplicar'),
    writeln('4) Dividir'),
    writeln('0) Salir').

manejar_opcion(0) :-
    writeln('Cerrando la calculadora...'),
    halt.

manejar_opcion(Opcion) :-
    member(Opcion, [1,2,3,4]),
    solicitar_operandos(X, Y),
    ejecutar_operacion(Opcion, X, Y, Resultado),
    (   Resultado = error(MsgError)
    ->  format('Error: ~w~n', [MsgError])
    ;   format('Resultado: ~w~n', [Resultado])
    ),
    ciclo_principal.

manejar_opcion(_) :-
    writeln('Opcion no valida, intenta de nuevo.'),
    ciclo_principal.

solicitar_operandos(Primero, Segundo) :-
    leer_numero('Escribe el primer numero: ', Primero),
    leer_numero('Escribe el segundo numero: ', Segundo).

leer_numero(Prompt, Numero) :-
    write(Prompt),
    read(Valor),
    (   number(Valor)
    ->  Numero = Valor
    ;   writeln('Entrada invalida: debes ingresar un numero (por ejemplo: 10.).'),
        leer_numero(Prompt, Numero)
    ).

ejecutar_operacion(1, A, B, R) :- R is A + B.
ejecutar_operacion(2, A, B, R) :- R is A - B.
ejecutar_operacion(3, A, B, R) :- R is A * B.

ejecutar_operacion(4, _A, 0, error('No se puede dividir entre cero')) :- !.
ejecutar_operacion(4, A, B, R) :-
    R is A / B.

ejecutar_operacion(_, _, _, error('Operacion no reconocida')).
