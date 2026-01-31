#lang racket

;; Data types

(struct seqid (path) #:transparent)
(struct extlink (extalias exttarget) #:transparent)
(struct wikilink (wikialias wikitarget) #:transparent)
(struct rellink (sbjct predct objct) #:transparent)
(struct relalias (aliastext targetrel) #:transparent)
(struct nestedrellinks (aliasnest nestedrellinks parenttargetrel) #:transparent) 
(struct node (id title hdrlevel filepath content links) #:transparent)

