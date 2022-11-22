;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::FieldNameChange2)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'FieldNameChange2 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::FIELDNAMECHANGE2")
  (make-package "TEST_ROSLIB_COMM::FIELDNAMECHANGE2"))

(in-package "ROS")
;;//! \htmlinclude FieldNameChange2.msg.html


(defclass test_roslib_comm::FieldNameChange2
  :super ros::object
  :slots (_b ))

(defmethod test_roslib_comm::FieldNameChange2
  (:init
   (&key
    ((:b __b) (instance test_roslib_comm::SameSubMsg1 :init))
    )
   (send-super :init)
   (setq _b __b)
   self)
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
    ;; test_roslib_comm/SameSubMsg1 _b
    (send _b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roslib_comm/SameSubMsg1 _b
       (send _b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roslib_comm/SameSubMsg1 _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;;
   self)
  )

(setf (get test_roslib_comm::FieldNameChange2 :md5sum-) "dde34a89b93706fc183fd13c24ae090a")
(setf (get test_roslib_comm::FieldNameChange2 :datatype-) "test_roslib_comm/FieldNameChange2")
(setf (get test_roslib_comm::FieldNameChange2 :definition-)
      "SameSubMsg1 b
================================================================================
MSG: test_roslib_comm/SameSubMsg1
int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/FieldNameChange2 "dde34a89b93706fc183fd13c24ae090a")


