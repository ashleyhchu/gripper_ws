;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::TransitiveMsg2)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'TransitiveMsg2 (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::TRANSITIVEMSG2")
  (make-package "TEST_ROSPY::TRANSITIVEMSG2"))

(in-package "ROS")
;;//! \htmlinclude TransitiveMsg2.msg.html
(if (not (find-package "TEST_ROSMASTER"))
  (ros::roseus-add-msgs "test_rosmaster"))


(defclass test_rospy::TransitiveMsg2
  :super ros::object
  :slots (_data ))

(defmethod test_rospy::TransitiveMsg2
  (:init
   (&key
    ((:data __data) (instance test_rosmaster::Composite :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/Composite _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/Composite _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/Composite _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get test_rospy::TransitiveMsg2 :md5sum-) "eb1fa3c8b51b0e31f74e89c2eecc441e")
(setf (get test_rospy::TransitiveMsg2 :datatype-) "test_rospy/TransitiveMsg2")
(setf (get test_rospy::TransitiveMsg2 :definition-)
      "test_rosmaster/Composite data

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



(provide :test_rospy/TransitiveMsg2 "eb1fa3c8b51b0e31f74e89c2eecc441e")


