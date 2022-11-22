;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::TransitiveSrv)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'TransitiveSrv (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::TRANSITIVESRV")
  (make-package "TEST_ROSPY::TRANSITIVESRV"))
(unless (find-package "TEST_ROSPY::TRANSITIVESRVREQUEST")
  (make-package "TEST_ROSPY::TRANSITIVESRVREQUEST"))
(unless (find-package "TEST_ROSPY::TRANSITIVESRVRESPONSE")
  (make-package "TEST_ROSPY::TRANSITIVESRVRESPONSE"))

(in-package "ROS")





(defclass test_rospy::TransitiveSrvRequest
  :super ros::object
  :slots (_msg ))

(defmethod test_rospy::TransitiveSrvRequest
  (:init
   (&key
    ((:msg __msg) (instance test_rospy::TransitiveMsg1 :init))
    )
   (send-super :init)
   (setq _msg __msg)
   self)
  (:msg
   (&rest __msg)
   (if (keywordp (car __msg))
       (send* _msg __msg)
     (progn
       (if __msg (setq _msg (car __msg)))
       _msg)))
  (:serialization-length
   ()
   (+
    ;; test_rospy/TransitiveMsg1 _msg
    (send _msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rospy/TransitiveMsg1 _msg
       (send _msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rospy/TransitiveMsg1 _msg
     (send _msg :deserialize buf ptr-) (incf ptr- (send _msg :serialization-length))
   ;;
   self)
  )

(defclass test_rospy::TransitiveSrvResponse
  :super ros::object
  :slots (_a ))

(defmethod test_rospy::TransitiveSrvResponse
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rospy::TransitiveSrv
  :super ros::object
  :slots ())

(setf (get test_rospy::TransitiveSrv :md5sum-) "8b7918ee2b81eaf825f4c70de011f6fa")
(setf (get test_rospy::TransitiveSrv :datatype-) "test_rospy/TransitiveSrv")
(setf (get test_rospy::TransitiveSrv :request) test_rospy::TransitiveSrvRequest)
(setf (get test_rospy::TransitiveSrv :response) test_rospy::TransitiveSrvResponse)

(defmethod test_rospy::TransitiveSrvRequest
  (:response () (instance test_rospy::TransitiveSrvResponse :init)))

(setf (get test_rospy::TransitiveSrvRequest :md5sum-) "8b7918ee2b81eaf825f4c70de011f6fa")
(setf (get test_rospy::TransitiveSrvRequest :datatype-) "test_rospy/TransitiveSrvRequest")
(setf (get test_rospy::TransitiveSrvRequest :definition-)
      "test_rospy/TransitiveMsg1 msg

================================================================================
MSG: test_rospy/TransitiveMsg1
TransitiveMsg2 msg2


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
---
int32 a


")

(setf (get test_rospy::TransitiveSrvResponse :md5sum-) "8b7918ee2b81eaf825f4c70de011f6fa")
(setf (get test_rospy::TransitiveSrvResponse :datatype-) "test_rospy/TransitiveSrvResponse")
(setf (get test_rospy::TransitiveSrvResponse :definition-)
      "test_rospy/TransitiveMsg1 msg

================================================================================
MSG: test_rospy/TransitiveMsg1
TransitiveMsg2 msg2


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
---
int32 a


")



(provide :test_rospy/TransitiveSrv "8b7918ee2b81eaf825f4c70de011f6fa")


