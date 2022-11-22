
(cl:in-package :asdf)

(defsystem "droidspeak-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DroidEmotion" :depends-on ("_package_DroidEmotion"))
    (:file "_package_DroidEmotion" :depends-on ("_package"))
  ))