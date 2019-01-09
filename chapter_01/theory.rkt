#lang racket/base

(define (square x) (* x x))
(define (sum-of-squares x y)
    (+ (square x) (square y)))


(sum-of-squares 3 4)

;;; (define (abs x)
;;;     (cond   ((> x 0) x)
;;;             ((= x 0) 0)
;;;             ((< x 0) (- x))))

;;; (define (abs x)
;;;     (cond ((< x 0) (- x))
;;;     (else x)))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(abs 7)
(abs -5)
(abs 0)

;;; (define (>= x y)
;;;     (or (> x y) (= x y)))

(define (>= x y)
    (not (< x y)))

(>= 5 7)
(>= 7 5)

;;; sqrt

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
    

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y) 
    (/ (+ x y) 2))

(define (good-enough? guess x) 
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x) 
    (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 2)