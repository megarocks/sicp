#lang racket/base

(define (square x) (* x x))
(define (sum-of-squares x y)
    (+ (square x) (square y))
)

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