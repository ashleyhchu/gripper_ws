;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::TypeNameChangeArray1)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'TypeNameChangeArray1 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::TYPENAMECHANGEARRAY1")
  (make-package "TEST_ROSLIB_COMM::TYPENAMECHANGEARRAY1"))

(in-package "ROS")
;;//! \htmlinclude TypeNameChangeArray1.msg.html


(defclass test_roslib_comm::TypeNameChangeArray1
  :super ros::object
  :slots (_a ))

(defmethod test_roslib_comm::TypeNameChangeArray1
  (:init
   (&key
    ((:a __a) (let (r) (dotimes (i 0) (push (instance test_roslib_comm::SameSubMsg1 :init) r)) r))
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
    ;; test_roslib_comm/SameSubMsg1[] _a
    (apply #'+ (send-all _a :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roslib_comm/SameSubMsg1[] _a
     (write-long (length _a) s)
     (dolist (elem _a)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roslib_comm/SameSubMsg1[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (let (r) (dotimes (i n) (push (instance test_roslib_comm::SameSubMsg1 :init) r)) r))
     (dolist (elem- _a)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_roslib_comm::TypeNameChangeArray1 :md5sum-) "31a9992534c4d020bfc4045e7dc1a786")
(setf (get test_roslib_comm::TypeNameChangeArray1 :datatype-) "test_roslib_comm/TypeNameChangeArray1")
(setf (get test_roslib_comm::TypeNameChangeArray1 :definition-)
      "SameSubMsg1[] a
================================================================================
MSG: test_roslib_comm/SameSubMsg1
int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/TypeNameChangeArray1 "31a9992534c4d020bfc4045e7dc1a786")


