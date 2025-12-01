#lang racket

(define LIMITE-MINIMA 15)
(define LIMITE-ALTA   30)

(define (clasificar-temperatura t)
  (cond
    [(< t LIMITE-MINIMA) "mínima"]
    [(> t LIMITE-ALTA)   "alta"]
    [else                "ambiente"]))

(define (main)
  (displayln "=== Clasificador de temperatura ===")
  (display   "Ingresa la temperatura en grados (número): ")
  (flush-output)
  (define entrada (read))

  (cond
    [(number? entrada)
     (define tipo (clasificar-temperatura entrada))
     (printf "La temperatura ~a es de tipo: ~a\n" entrada tipo)]
    [else
     (displayln "Error: debes ingresar un número.")]))

(main)
