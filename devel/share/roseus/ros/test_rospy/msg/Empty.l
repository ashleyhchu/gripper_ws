;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::Empty)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'Empty (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::EMPTY")
  (make-package "TEST_ROSPY::EMPTY"))

(in-package "ROS")
;;//! \htmlinclude Empty.msg.html


(defclass test_rospy::Empty
  :super ros::object
  :slots ())

(defmethod test_rospy::Empty
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get test_rospy::Empty :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get test_rospy::Empty :datatype-) "test_rospy/Empty")
(setf (get test_rospy::Empty :definition-)
      "
")



(provide :test_rospy/Empty "d41d8cd98f00b204e9800998ecf8427e")


