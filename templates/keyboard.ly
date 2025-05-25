%% http://lsr.di.unimi.it/LSR/Item?id=791
%% see also http://lilypond.org/doc/v2.18/Documentation/snippets/keyboards


#(define KEY-POS-LIST '(
   (a,   .    1) (ais, .  1.5) (bes, .  1.5)  (b, . 2)   (c   .    3) (cis  .  3.5) (des . 3.5)
   (d    .    4) (dis  .  4.5) (ees  .  4.5) (e   .  5) (f    .    6) (fis  .  6.5) (ges . 6.5)
   (g    .    7) (gis  .  7.5) (aes  .  7.5) (a   .  8) (ais  .  8.5) (bes  .  8.5) (b   .   9)
   (c'   .   10) (cis' . 10.5) (des' . 10.5) (d'  . 11) (dis' . 11.5) (ees' . 11.5) (e'  .  12)
   (f'   .   13) (fis' . 13.5) (ges' . 13.5) (g'  . 14) (gis' . 14.5) (aes' . 14.5) (a'  .  15)
   (ais' . 15.5) (bes' . 15.5) (b'   .   16) (c'' . 17)))

#(define (black-key? num )
   (member num '(ais, bes,
                 cis  des  dis  ees  fis  ges  gis  aes  ais  bes
                 cis' des' dis' ees' fis' ges' gis' aes' ais' bes')) )

#(define (key-to-pos key ypos)
  (let ((keypos (assq key KEY-POS-LIST)))
   (if (not keypos)
    (ly:error (_ "keyboard diagram error - unkown note '~a'") key)
    (cons (- (cdr (assq key KEY-POS-LIST)) 0.5) ypos))))

#(define (make-keys l1 width off height fill)
   (if (null? l1)
       empty-stencil
       (ly:stencil-add
          (ly:stencil-translate
            (make-line-stencil 0.1 0 0 0 height)
             (if fill
               (cons (- (car l1) (/ width 2)) off) ;
               (cons (- (car l1) 1)  off)))
          (make-keys (cdr l1) width off height fill))))

#(define (make-keys-black l1 width off height fill)
   (if (null? l1)
       empty-stencil
       (ly:stencil-add
          (ly:stencil-translate
            (ly:round-filled-box `(0 . ,width) `(0 . ,height) 0)
             (if fill
               (cons (- (car l1) (/ width 2)) off) ;
               (cons (- (car l1) 1)  off)))
          (make-keys-black (cdr l1) width off height fill))))

#(define (make-dot key)
  (if (black-key? key)
    (ly:stencil-in-color
      (ly:stencil-translate (make-circle-stencil  0.27 0 #t) (key-to-pos key 2.5)) 1 1 1)
    (ly:stencil-translate (make-circle-stencil  0.32 0 #t) (key-to-pos key 0.8)) ))

#(define (make-dot-list l1)
   (if (null? l1)
       empty-stencil
       (ly:stencil-add
          (make-dot (car l1))
          (make-dot-list (cdr l1)))))

#(define-markup-command (keys layout props arg1) (list?)
    (ly:stencil-add
      (make-line-stencil 0.1 0 0 17 0)
      (make-line-stencil 0.1 0 6 17 6)
      (make-keys '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18) 1    0 6 #f)
      (make-keys-black '(1   3 4   6 7 8   10 11    13 14 15   ) 0.65 2 4 #t)
      (make-dot-list arg1 )))

