(define (helper-for-foo a-value)
  a-value)

(define (foo some-value another-value)
  (+ (helper-for-foo some-value) another-value))