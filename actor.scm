(use ssax)
(use http-client)
(use sxpath)

(define doc (with-input-from-file
  "/home/jason/dev/actor/fippa-small.xhtml"
    (lambda () 
      (ssax:xml->sxml (current-input-port) '((xhtml . "http://www.w3.org/1999/xhtml" )))))

((sxpath "//xhtml:td" '((xhtml . "http://www.w3.org/1999/xhtml"))) doc)

