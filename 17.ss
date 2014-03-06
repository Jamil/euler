#lang racket

(define ht (hash
            '0 ""
            '1 "one"
            '2 "two"
            '3 "three"
            '4 "four" 
            '5 "five"
            '6 "six"
            '7 "seven"
            '8 "eight"
            '9 "nine"
            '10 "ten"
            '11 "eleven"
            '12 "twelve"
            '13 "thirteen"
            '14 "fourteen"
            '15 "fifteen"
            '16 "sixteen"
            '17 "seventeen"
            '18 "eighteen"
            '19 "nineteen"
            '20 "twenty"
            '30 "thirty"
            '40 "forty"
            '50 "fifty"
            '60 "sixty"
            '70 "seventy"
            '80 "eighty"
            '90 "ninety"
            ))

(define (parse-tens n)
  (cond ((> n 19)
         (string-append (hash-ref ht (* (floor (/ n 10)) 10)) (hash-ref ht (modulo n 10))))
        (else
         (hash-ref ht n))))

(define (parse-hundreds n)
  (string-append 
   (hash-ref ht (floor (/ n 100))) 
   (cond ((>= n 100) (string-append "hundred" (cond ((eq? (modulo n 100) 0) "") (else "and")))) 
         (else "")) 
   (parse-tens (modulo n 100))))

(define (parse-thousands n)
  (string-append (hash-ref ht (floor (/ n 1000))) (cond ((>= n 1000) "thousand") (else "")) (parse-hundreds (modulo n 1000))))

(define (count-nums max)
  (cond ((<= max 0) 0)
         (else
          (+ (string-length (parse-thousands max)) (count-nums (- max 1))))))
        
            