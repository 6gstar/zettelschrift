#lang racket

; Data types

(struct node (nodeid nodetitle nodehdrnumber) #:transparent)
(struct seqlink (seqid seqtarget) #:transparent)
(struct reglink (linkalias nodetarget) #:transparent)
(struct rellink (sbjct predct objct) #:transparent)
(struct aliased-rellink (relalias rellinktarget) #:transparent)





