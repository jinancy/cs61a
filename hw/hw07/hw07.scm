(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s)))

(define (caddr s)
  (car (cdr (cdr s))))

(define (sign x)
  (cond 
  	((> x 0) 1) 
  	((= x 0) 0) 
  	((< x 0) -1))
  )

(define (square x) (* x x))

(define (pow b n)
  (expt b n)
  )

(define (ordered? s)
  (cond 
  	((null? (cdr s)) #t)
  	((> (car s) (cadr s)) #f)
  	(else (ordered? (cdr s)))
  )
)