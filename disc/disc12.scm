(define (up n)
  (define (helper n result)
    (if (zero? n) result
        (helper (quotient n 10)
                (let ((first (remainder n 10)))
                  (cons first (if (null? result) '() (if (> (car result) first) result (list result))))))))
  `',(helper n '()))

(expect (up 314152667899) '(3 (1 4 (1 5 (2 6 (6 7 8 9 (9)))))))
