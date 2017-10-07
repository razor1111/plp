;2a questão da lista
(defun fat (n) "Calc fatorial de um numero"
	(if (<= n 0)
		1
		(* n (fat (- n 1)))
	)
)


(defun som (i) "Calc somatorio"
	(if(= i 0)
		0
		(+ (+ (/ (fat i) (+ i 1)) (- i 1))(som (- i 1))
	)
))
;3a questão da lista
(defun calc_quad (lista) 
	(cond ((equal lista nil) 0) 
		((and (integerp (car lista)) (= (mod (car lista) 2) 0)) (+ (calc_quad (cdr lista)) (quadrado (car lista))))
		(t (calc_quad (cdr lista)))
		)
)

(defun quadrado (x)
 	(* x x)
)

;4a questão da lista
(defun verifica (lista) 
	(cond ((equal lista nil) 0) 
		((integerp (car lista)) (+ 1 (verifica (cdr lista))))
		(t (verifica (cdr lista)))
	)
)

;5a questão da lista
(defun operacoes ()
	(setf x (read)) (setf y (read))
	(format t "A lista Resultante: ~S~%"(list(+ x y)(- x y)(* x y)(/ x y))
		)
	)
