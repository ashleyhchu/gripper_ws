
(cl:in-package :asdf)

(defsystem "droidspeak-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DroidChat" :depends-on ("_package_DroidChat"))
    (:file "_package_DroidChat" :depends-on ("_package"))
  ))