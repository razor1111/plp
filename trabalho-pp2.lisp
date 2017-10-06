;2a questão da lista
(defun fatorial (n) "Calc fatorial de um numero"
	(if (<= n 0)
		1
		(* n (fatorial (- n 1)))
	)
)

(defun somatorio (n,i) "Realiza somatorio"
	(if (< i n)
		(+ (+ (/ (fatorial i) (+ i 1)) (- i 1)) (somatorio n (+ i 1)))
		0 
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
