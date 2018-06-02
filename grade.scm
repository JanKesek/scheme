(define score
	(lambda (a)
		(cond
		((>= 100 a 80) "A")
		((<= 60 a 79) "B")
		((<= 40 a 59) "C")
		((< a 40) "D")
		( (or (> 100 a) (< 0 a) ( "impossible" ) ) ) ) ) ) 
