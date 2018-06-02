(define product
	(lambda (a b c)
		(and (> a 0) (> b 0) (> c 0) (* a b c)   ) ) )

(define pr_or 
	(lambda (a b c)
		(if (or (< a 0) (< b 0) (< c 0)) (* a b c) )))
