;Write a function that convert the unit of angles from degree to radian.
;180 degree is π radian. π is defined by
(define pi (* 4 (atan 1.0))) 
(define one_deg(/ pi 180))
(define from_deg_to_rad 
	(lambda (a)
		(* one_deg a)))

