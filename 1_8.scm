(define (square x)
	(* x x))

(define (abs x)
	(if(< 0 x)
		x
		(- x)))

(define (average x y)
	(/ (+ x y) 2))

(define (good_enough? guess x)
	(< (abs(- guess (/ x guess))) 0.1))

(define (improve guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (try guess x)
	(if(good_enough? guess x)
		guess
		(try (improve guess x) x)))


(define (sqrt x) (try 1.0 x))