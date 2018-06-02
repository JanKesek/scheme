(define absolute_value 
	(lambda (a)
		(abs a) ))

(define reciprocal

	(lambda (a)
		(if (= a 0)
                	(#f))
		(/ 1 a) ))

(define int_to_char
	(lambda (a)
		(if (or (< a 33) (> a 126)) 
			(#f))
		(integer->char a)))


;answers:
(define (inv n)
  (if (not (zero? n))
      (/ n)))

(define (i2a n)
  (if (<= 33 n 126)
      (integer->char n)))



