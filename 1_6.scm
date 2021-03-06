(define (abs x) (if(< x 0)(- x)x))
(define (average x y)(/ (+ x y) 2))
(define (good-enough? guess x) (< (abs(- guess (/ x guess))) 0.0001))
(define (improve guess x) (average guess (/ x guess)))
(define (try guess x) (if (good-enough? guess x)guess(try (improve guess x) x)))
(define (sqrt x) (try 1 x))