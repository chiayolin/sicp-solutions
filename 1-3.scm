;; exercise 1.3 - define a procedure that takes three numbers as argu-
;; ments and returns the sum of the squares of the two larger numbers

(define (sum-of-square x y)
  (+ (* x x) (* y y)))

(define (sum-of-sq-larger-two x y z)
  (if (<= x y)
    (sum-of-square y (if (<= x z) z x))
    (sum-of-square x (if (<= y z) z y))))

;; tests
(sum-of-sq-larger-two 1 3 4)
(sum-of-sq-larger-two 4 1 3)
(sum-of-sq-larger-two 3 4 1)
