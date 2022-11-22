;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::TypeNameChange2)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'TypeNameChange2 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::TYPENAMECHANGE2")
  (make-package "TEST_ROSLIB_COMM::TYPENAMECHANGE2"))

(in-package "ROS")
;;//! \htmlinclude TypeNameChange2.msg.html


(defclass test_roslib_comm::TypeNameChange2
  :super ros::object
  :slots (_a ))

(defmethod test_roslib_comm::TypeNameChange2
  (:init
   (&key
    ((:a __a) (instance test_roslib_comm::SameSubMsg2 :init))
    )
   (send-super :init)
   (setq _a __a)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:serialization-length
   ()
   (+
    ;; test_roslib_comm/SameSubMsg2 _a
    (send _a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roslib_comm/SameSubMsg2 _a
       (send _a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roslib_comm/SameSubMsg2 _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;;
   self)
  )

(setf (get test_roslib_comm::TypeNameChange2 :md5sum-) "31a9992534c4d020bfc4045e7dc1a786")
(setf (get test_roslib_comm::TypeNameChange2 :datatype-) "test_roslib_comm/TypeNameChange2")
(setf (get test_roslib_comm::TypeNameChange2 :definition-)
      "SameSubMsg2 a
================================================================================
MSG: test_roslib_comm/SameSubMsg2
int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/TypeNameChange2 "31a9992534c4d020bfc4045e7dc1a786")


