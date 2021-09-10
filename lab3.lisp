(defun overlap (a b)
	(cond ((null a) nil)
	((member (car a) b) t)
	(t (overlap (cdr a) b))))

(overlap '(1 2 3 4 5) '(  6 8 9))

(defun minus (a b)
	(cond ((null a) a)
	((member (car a) b) (minus (cdr a) b))
	((cons (car a) (minus (cdr a) b)))))

(minus '(1 2 3 4 5) '(3 4 5 6 7))

(defun oper (x a b)
	(cond ((or (null a) (null b)) nil)
	(t (cons (funcall x (car a) (car b))
	(oper x (cdr a) (cdr b))))))

(oper '/ '(15 20 100) '(30 20 10))
(oper #'(lambda (a b) (max a b)) '(15 20 100) '(30 20 10))