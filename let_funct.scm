(define (veloc v theta) 
	(let (the(* (\ (define pi (* 4 (atan 1.0))) 180) theta))
	;predkosc
	 (vert (* v (cos the)))
	 (hor (* v (sin the)))
	;czas
	 (t (\ (* 2 vert) 9.8))
	(s (\ vert t))
	(list s)) )

 	
