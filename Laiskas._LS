(DEFUN C:Laiskas()
  (setq taskas (getpoint "\nIveskite bazinio tasko pradine koordinate:"))
  (Command "color" "white")
  (Command "lweight" 0.25)
  (setq I3 (list (+ (car taskas) 50) (+ (cadr taskas) 30)))
  (Command "Rectangle" taskas I3)
  (setq I4 (list (+ (car taskas) 10) (+ (cadr taskas) 20)))
  (setq I5 (list (+ (car taskas) 30) (+ (cadr taskas) 20)))
  (setq I6 (list (+ (car taskas) 15) (+ (cadr taskas) 15)))
  (setq I7 (list (+ (car taskas) 35) (+ (cadr taskas) 15)))
  (setq I8 (list (+ (car taskas) 20) (+ (cadr taskas) 10)))
  (setq I9 (list (+ (car taskas) 40) (+ (cadr taskas) 10)))
  (Command "line" I4 I5 "")
  (Command "line" I6 I7 "")
  (Command "line" I8 I9 "")
  (setq I10 (list (+ (car I5) 7) (+ (cadr I5) 1)))
  (setq I11 (list (+ (car I10) 5) (+ (cadr I10) 7)))
  (Command "Rectangle" I10 I11)
  (Command "pline" (list (+ (halfway I10 I11)) (+ (cadr taskas) 10)) )
)