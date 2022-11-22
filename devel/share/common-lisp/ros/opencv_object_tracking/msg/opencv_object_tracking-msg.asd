
(cl:in-package :asdf)

(defsystem "opencv_object_tracking-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "position_publish" :depends-on ("_package_position_publish"))
    (:file "_package_position_publish" :depends-on ("_package"))
  ))