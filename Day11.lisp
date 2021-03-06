; Day 11
; Presents! 

; Challenge :
; Write a program that asks the user to input a list of family members and then gives them a random present from each member. 
; The program cannot give the same present twice, unless the user inputs too many family members

; Language -> Common Lisp

(write-line "Merry Christmas!")(terpri)
(write-line "List the family members one by one. When you are done type \"END\"(All Caps) to stop listing.")(terpri)(format t "Members:~%")
(defvar cnt 1)(defvar people-list (list))(defvar cnt1 1)(defvar gift-list (list))
(loop(format t "~D: " cnt)(setq person (read-line))(when(string= person "END")(return))(push person people-list)(terpri)(incf cnt))
(write-line "Now list the gifts one by one. When you are done type \"END\"(All Caps) to stop listing.")(terpri)(format t "Gifts:~%")
(loop(format t "~D: " cnt1)(setq gift(read-line))(when(string= gift"END")(return))(push gift gift-list)(terpri)(incf cnt1))
(defmacro x(lat n)`(concatenate 'list ,@(make-list n :initial-element lat)))
(defun nshuffle (sequence)(loop for i from (length sequence) downto 2 do(rotatef (elt sequence (random i))(elt sequence (1- i)))) sequence)
(defvar shuffled-gifts(nshuffle gift-list))(defvar new-gift-list (x shuffled-gifts 100))
(loop for x from 0 to(-(length people-list) 1)do(format t "~A got ~A~%"(nth x people-list)(nth x new-gift-list)))
