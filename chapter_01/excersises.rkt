#lang racket/base

;;; 1.1
10 ;;; 10

(+ 5 3 4) ;;; 12

(- 9 1) ;;; 8 

(/ 6 2) ;;; 3

(+ (* 2 4) (- 4 6)) ;;; 6

(define a 3)

(define b (+ a 1))

(+ a b (* a b)) ;;; (+ 3 4 12) 19

(= a b) ;;; #f

(if (and (> b a) (< b (* a b))) 
    a
    b) ;;; 3

(cond   ((= a 4) 6)
        ((= b 4) (+ 6 7 a))
        (else 25)) ;;; 16

(+ 2 (if (> b a) b a)) ;;; 6

(* (cond    ((> a b) a)
            ((< a b) b)
            (else -1))
    (+ a 1)) ;;; 16

;;; 1.2
(/  (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
    (* 3 (- 6 2) (- 2 7)))

;;; 1.3
(define (sum-max-squares x y z) 
    (cond   ((and (< x y) (< x z)) (+ (* y y) (* z z)))
            ((and (< y x) (< y z)) (+ (* x x) (* z z)))
            ((and (< z x) (< z y)) (+ (* x x) (* y y)))
    )
)
(sum-max-squares 5 2 3)

;;; 1.4
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(a-plus-abs-b 5 -20)

;;; 1.5
(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))   ;;; infinit loop
