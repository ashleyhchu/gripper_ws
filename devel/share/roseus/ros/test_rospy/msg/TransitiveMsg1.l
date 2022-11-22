;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::TransitiveMsg1)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'TransitiveMsg1 (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::TRANSITIVEMSG1")
  (make-package "TEST_ROSPY::TRANSITIVEMSG1"))

(in-package "ROS")
;;//! \htmlinclude TransitiveMsg1.msg.html


(defclass test_rospy::TransitiveMsg1
  :super ros::object
  :slots (_msg2 ))

(defmethod test_rospy::TransitiveMsg1
  (:init
   (&key
    ((:msg2 __msg2) (instance test_rospy::TransitiveMsg2 :init))
    )
   (send-super :init)
   (setq _msg2 __msg2)
   self)
  (:msg2
   (&rest __msg2)
   (if (keywordp (car __msg2))
       (send* _msg2 __msg2)
     (progn
       (if __msg2 (setq _msg2 (car __msg2)))
       _msg2)))
  (:serialization-length
   ()
   (+
    ;; test_rospy/TransitiveMsg2 _msg2
    (send _msg2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rospy/TransitiveMsg2 _msg2
       (send _msg2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rospy/TransitiveMsg2 _msg2
     (send _msg2 :deserialize buf ptr-) (incf ptr- (send _msg2 :serialization-length))
   ;;
   self)
  )

(setf (get test_rospy::TransitiveMsg1 :md5sum-) "72751523a989ee2c7a44c006464315e9")
(setf (get test_rospy::TransitiveMsg1 :datatype-) "test_rospy/TransitiveMsg1")
(setf (get test_rospy::TransitiveMsg1 :definition-)
      "TransitiveMsg2 msg2


================================================================================
MSG: test_rospy/TransitiveMsg2
test_rosmaster/Composite data

================================================================================
MSG: test_rosmaster/Composite
# composite message. required for testing import calculation in generators
CompositeA a
CompositeB b

================================================================================
MSG: test_rosmaster/CompositeA
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: test_rosmaster/CompositeB
# copy of geometry_msgs/Point for testing
float64 x
float64 y
float64 z

")



(provide :test_rospy/TransitiveMsg1 "72751523a989ee2c7a44c006464315e9")


