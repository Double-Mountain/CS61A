(define (over-or-under num1 num2) (
  cond ((< num1 num2) -1)
      ((= num1 num2) 0)
      ((> num1 num2) 1)))

(define (make-adder num) 
  (define (adder inc)
    (+ num inc))
  adder)

(define (composed f g) 
  (define (fg x)
    (f (g x)))
  fg)

(define (repeat f n) 
  (define (fn x)
    (define (fn_helper x n)
      (if (= n 0)
          x
          (f (fn_helper x (- n 1)))))
    (fn_helper x n))
  fn)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (define greater (max a b))
  (define lesser (min a b))
  (if (zero? (modulo greater lesser))
      lesser
      (gcd lesser (modulo greater lesser))))
