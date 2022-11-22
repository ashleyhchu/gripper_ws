;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::FieldNameChange1)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'FieldNameChange1 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::FIELDNAMECHANGE1")
  (make-package "TEST_ROSLIB_COMM::FIELDNAMECHANGE1"))

(in-package "ROS")
;;//! \htmlinclude FieldNameChange1.msg.html


(defclass test_roslib_comm::FieldNameChange1
  :super ros::object
  :slots (_a ))

(defmethod test_roslib_comm::FieldNameChange1
  (:init
   (&key
    ((:a __a) (instance test_roslib_comm::SameSubMsg1 :init))
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
    ;; test_roslib_comm/SameSubMsg1 _a
    (send _a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roslib_comm/SameSubMsg1 _a
       (send _a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roslib_comm/SameSubMsg1 _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;;
   self)
  )

(setf (get test_roslib_comm::FieldNameChange1 :md5sum-) "31a9992534c4d020bfc4045e7dc1a786")
(setf (get test_roslib_comm::FieldNameChange1 :datatype-) "test_roslib_comm/FieldNameChange1")
(setf (get test_roslib_comm::FieldNameChange1 :definition-)
      "SameSubMsg1 a
================================================================================
MSG: test_roslib_comm/SameSubMsg1
int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/FieldNameChange1 "31a9992534c4d020bfc4045e7dc1a786")


