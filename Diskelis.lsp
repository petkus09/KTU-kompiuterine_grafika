(DEFUN C:Diskelis()
  (setq taskas (getpoint "\nIveskite bazinio tasko pradine koordinate:"))
  (Command "color" "white")
  (Command "lweight" 0.25)
  (setq I01 (list (+ (car taskas) 10) (+ (cadr taskas) 0)))
  (setq I02 (list (+ (car taskas) 0) (+ (cadr taskas) 10)))
  (setq I03 (list (+ (car taskas) 0) (+ (cadr taskas) 60)))
  (setq I04 (list (+ (car taskas) 60) (+ (cadr taskas) 60)))
  (setq I05 (list (+ (car taskas) 60) (+ (cadr taskas) 0)))
  ;Virsus
  (setq B01 (list (+ (car taskas) 10) (+ (cadr taskas) 60)))
  (setq B02 (list (+ (car taskas) 10) (+ (cadr taskas) 30)))
  (setq B03 (list (+ (car taskas) 50) (+ (cadr taskas) 60)))
  (setq B04 (list (+ (car taskas) 50) (+ (cadr taskas) 30)))
  ;Apacia
  (setq C01 (list (+ (car taskas) 20) (+ (cadr taskas) 0)))
  (setq C02 (list (+ (car taskas) 30) (+ (cadr taskas) 20)))
  (setq C03 (list (+ (car taskas) 30) (+ (cadr taskas) 10)))
  (setq C04 (list (+ (car taskas) 40) (+ (cadr taskas) 10)))
  (setq C05 (list (+ (car taskas) 20) (+ (cadr taskas) 20)))
  (Command "line" C01 C05 C02 "")
  (command "pline" C03 "w" 20 20 C04 "")
  (Command "line" B01 B02 B04 B03 "")
  (Command "line" I01 I02 I03 I04 I05 I01 "")
  (command "fillet" "R" (/ 3) )
  (command "fillet"  (list(+ (car I03) 3) (cadr I03) )  (list (car I03) (-(cadr I03) 3)))
  (command "fillet"  (list(- (car I04) 3) (cadr I04) )  (list (car I04) (-(cadr I04) 3))"")
  (command "fillet"  (list(- (car I05) 3) (cadr I05) )  (list (car I05) (+(cadr I05) 3))"")
  (command "fillet"  (list(+ (car B02) 3) (cadr B02) )  (list (car B02) (+(cadr B02) 3))"")
  (command "fillet"  (list(- (car B04) 3) (cadr B04) )  (list (car B04) (+(cadr B04) 3))-enter)
)