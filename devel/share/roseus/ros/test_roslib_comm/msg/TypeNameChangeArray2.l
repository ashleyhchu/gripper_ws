;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::TypeNameChangeArray2)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'TypeNameChangeArray2 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::TYPENAMECHANGEARRAY2")
  (make-package "TEST_ROSLIB_COMM::TYPENAMECHANGEARRAY2"))

(in-package "ROS")
;;//! \htmlinclude TypeNameChangeArray2.msg.html


(defclass test_roslib_comm::TypeNameChangeArray2
  :super ros::object
  :slots (_a ))

(defmethod test_roslib_comm::TypeNameChangeArray2
  (:init
   (&key
    ((:a __a) (let (r) (dotimes (i 0) (push (instance test_roslib_comm::SameSubMsg2 :init) r)) r))
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
    ;; test_roslib_comm/SameSubMsg2[] _a
    (apply #'+ (send-all _a :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roslib_comm/SameSubMsg2[] _a
     (write-long (length _a) s)
     (dolist (elem _a)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roslib_comm/SameSubMsg2[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (let (r) (dotimes (i n) (push (instance test_roslib_comm::SameSubMsg2 :init) r)) r))
     (dolist (elem- _a)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_roslib_comm::TypeNameChangeArray2 :md5sum-) "31a9992534c4d020bfc4045e7dc1a786")
(setf (get test_roslib_comm::TypeNameChangeArray2 :datatype-) "test_roslib_comm/TypeNameChangeArray2")
(setf (get test_roslib_comm::TypeNameChangeArray2 :definition-)
      "SameSubMsg2[] a
================================================================================
MSG: test_roslib_comm/SameSubMsg2
int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/TypeNameChangeArray2 "31a9992534c4d020bfc4045e7dc1a786")


