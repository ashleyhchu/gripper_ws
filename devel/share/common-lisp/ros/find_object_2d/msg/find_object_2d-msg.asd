
(cl:in-package :asdf)

(defsystem "find_object_2d-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectsStamped" :depends-on ("_package_ObjectsStamped"))
    (:file "_package_ObjectsStamped" :depends-on ("_package"))
    (:file "position_publish" :depends-on ("_package_position_publish"))
    (:file "_package_position_publish" :depends-on ("_package"))
  ))