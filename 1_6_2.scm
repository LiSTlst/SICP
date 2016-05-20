(define (abs x)
	(if (< x 0)
		(- x)
		x))

(define (average x y)
	(/ (+ x y) 2))

(define (sqrt x)
	(define (good_enough? guess x)
		(< (abs (- guess (/ x guess))) 0.001))

	(define (improve guess x)
		(average guess (/ x guess)))

	(define (try guess x)
		(if(good_enough? guess x)
			guess
			(try (improve guess x) x)))

	(try 1.0 x)
)