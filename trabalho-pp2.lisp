;2a questão da lista
(defun fatorial (n) "Calc fatorial de um numero"
	(if (<= n 0)
		1
		(* n (fatorial (- n 1)))
	)
)


(defun som (n i) "Calc somatorio"
	(if (= i n)
		0
		(+ (som n (+ i 1)) (+ (/ (fatorial i) (+ i 1)) (- i 1)))
	)
)

;4a questão da lista
(defun verifica (lista) 
	 (cond((equal lista nil)0) 
		 ((integerp(car lista))(+ 1 (verifica(cdr lista))))
		 )
	 )

;5a quesyão da lista
(defun operacoes ()
	(setf x (read)) (setf y (read))
	(format t "A lista Resultante: ~S~%"(list(+ x y)(- x y)(* x y)(/ x y))
		)
	)
