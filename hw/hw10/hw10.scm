(define (accumulate combiner start n term)
  (if (= n 0) start
  	(accumulate combiner (combiner start (term n)) (- n 1) term)
  )
)

(define (accumulate-tail combiner start n term)
  (if (= n 0) start
  	(accumulate-tail combiner (combiner start (term n)) (- n 1) term)
  )
)

(define (rle s)
  (define (helper e length s)
  	(cond
  		((null? s) (cons-stream (list e length) nil))
  		((= (car s) e) (helper e (+ 1 length) (cdr-stream s)))
  		(else (cons-stream (list e length) (rle s)))
  	)
  )
  (if (null? s) ()
  	(helper (car s) 1 (cdr-stream s))
  )
)