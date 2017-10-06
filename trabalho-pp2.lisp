;2a questão da lista
(defun fatorial (n) "Calc fatorial de um numero"
		(if (<= n 0)
			1
			(* n (fatorial (- n 1)))
		)
	)

(defun somatorio (n,i) "Realiza somatorio"
	(+ (/ (fatorial i) (+ i 1)) (- i 1)) 
	)

