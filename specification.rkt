#lang racket

; Canonical objects

(struct rellink (subj predct objct) #:transparent)
(struct aliased-rellink (relalias rellink) #:transparent)
(struct seqlink (id headertitle) #:transparent)
(define (make-rellink subj predct objct) (rellink subj predct objct)
(define (make-aliased-rellink relalias rellink) (aliased-rellink relalias rellink))
(define (make-seqlink id headertitle) (seqlink id headertitle))
