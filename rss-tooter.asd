;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-
(defpackage #:rss-tooter-asd
  (:use :cl :asdf))

(in-package :rss-tooter-asd)

(defsystem rss-tooter
  :name "rss-tooter"
  :version "0.1.0"
  :maintainer "Jordan Han"
  :author "Jordan Han"
  :licence "GPLv3"
  :description "A simple tool to translate an RSS feed into mastodon posts (https://joinmastodon.org)"
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :serial t ;;Dependencies are linear
  :depends-on (:cl-yaml
	       :tooter)
  :components ((:file "defpackage")
	       (:file "rss-tooter")))
