(defun rplc (x y sent)
	(cond ((null sent) nil)
	((equal (car sent) x)(cons y (rplc x y (cdr sent))))
	(t(cons (car sent) (rplc x y (cdr sent))))))

(rplc 1 '+ '(2 1 3 5 1 1 8))

(defun cnt (sent el)
	(cond((null sent) 0)
	((equal el (car sent)) (+ 1 (cnt(cdr sent) el)))
	(+ 0 (cnt(cdr sent) el))))

(cnt `(1 (a) x (a) 2 1 2 d) '(a))

(defun cut (sent start end)
	(cond ((or (null sent) (= end 0)) nil)
	((= start 1)(cons (car sent) (cut (cdr sent) 1 (1- end))))
	((cut (cdr sent) (1- start) end))))

(cut '(-2 6 s -1 4 f 0 z x r) 3 4)