(caaar(cdar`((1 ((*) 2 3)))))

(cons(cons(cons 1(cons 2(cons 3 nil)))nil)nil)
 (cons (+ 1 2) '(+ 4 6))
(list(list(list 1 2 3)))

(defun glaisbeer(k)
	(append (last(butlast k))
	(cdr(butlast (butlast k)))
	(list(car k))(last k)))

(glaisbeer '(1 2 3 4 5 6 7 8 9))