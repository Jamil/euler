#lang racket

(define (sum-lists a b carry)
  (cond ((and (empty? a) (empty? b)) (cons carry '()))
        ((empty? a) 
         (cons (modulo (+ (car b) carry) 10) (sum-lists a (cdr b) (floor (/ (+ (car b) carry) 10)))))
        ((empty? b) 
         (cons (modulo (+ (car a) carry) 10) (sum-lists (cdr a) b (floor (/ (+ (car a) carry) 10)))))
        (else
         (cons (modulo (+ (car a) (car b) carry) 10) (sum-lists (cdr a) (cdr b) (floor (/ (+ (car a) (car b) carry) 10)))))))

(define (mult-list l m carry)
  (cond ((empty? l) 
         (cond ((eq? carry 0) '())
               (else (cons carry '()))))
        (else
         (cons (modulo (+ (* (car l) m) carry) 10) (mult-list (cdr l) m (floor (/ (+ (* (car l) m) carry) 10)))))))

(define (sum-terms l)
  (cond ((empty? l) 0)
        (else
         (+ (car l) (sum-terms (cdr l))))))

(define (power exp)
  (cond ((eq? exp 0) '(1))
        (else
         (mult-list (power (- exp 1)) 2 0))))
  
  