;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::Composite)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'Composite (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::COMPOSITE")
  (make-package "TEST_ROSMASTER::COMPOSITE"))

(in-package "ROS")
;;//! \htmlinclude Composite.msg.html


(defclass test_rosmaster::Composite
  :super ros::object
  :slots (_a _b ))

(defmethod test_rosmaster::Composite
  (:init
   (&key
    ((:a __a) (instance test_rosmaster::CompositeA :init))
    ((:b __b) (instance test_rosmaster::CompositeB :init))
    )
   (send-super :init)
   (setq _a __a)
   (setq _b __b)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/CompositeA _a
    (send _a :serialization-length)
    ;; test_rosmaster/CompositeB _b
    (send _b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/CompositeA _a
       (send _a :serialize s)
     ;; test_rosmaster/CompositeB _b
       (send _b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/CompositeA _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;; test_rosmaster/CompositeB _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;;
   self)
  )

(setf (get test_rosmaster::Composite :md5sum-) "d8fb6eb869ad3956b50e8737d96dc9fa")
(setf (get test_rosmaster::Composite :datatype-) "test_rosmaster/Composite")
(setf (get test_rosmaster::Composite :definition-)
      "# composite message. required for testing import calculation in generators
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



(provide :test_rosmaster/Composite "d8fb6eb869ad3956b50e8737d96dc9fa")


