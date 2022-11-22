;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::Constants)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'Constants (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::CONSTANTS")
  (make-package "TEST_ROSBAG::CONSTANTS"))

(in-package "ROS")
;;//! \htmlinclude Constants.msg.html


(intern "*CONSTANT*" (find-package "TEST_ROSBAG::CONSTANTS"))
(shadow '*CONSTANT* (find-package "TEST_ROSBAG::CONSTANTS"))
(defconstant test_rosbag::Constants::*CONSTANT* 2)
(intern "*CONSTANT_TWO*" (find-package "TEST_ROSBAG::CONSTANTS"))
(shadow '*CONSTANT_TWO* (find-package "TEST_ROSBAG::CONSTANTS"))
(defconstant test_rosbag::Constants::*CONSTANT_TWO* 42)
(defclass test_rosbag::Constants
  :super ros::object
  :slots (_value ))

(defmethod test_rosbag::Constants
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosbag::Constants :md5sum-) "b45401c4d442c4da7b0a2a105075fa4a")
(setf (get test_rosbag::Constants :datatype-) "test_rosbag/Constants")
(setf (get test_rosbag::Constants :definition-)
      "int32 CONSTANT=2
int32 CONSTANT_TWO=42
int32 value
")



(provide :test_rosbag/Constants "b45401c4d442c4da7b0a2a105075fa4a")


