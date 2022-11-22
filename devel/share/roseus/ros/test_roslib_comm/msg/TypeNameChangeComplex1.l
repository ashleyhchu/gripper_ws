;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::TypeNameChangeComplex1)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'TypeNameChangeComplex1 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::TYPENAMECHANGECOMPLEX1")
  (make-package "TEST_ROSLIB_COMM::TYPENAMECHANGECOMPLEX1"))

(in-package "ROS")
;;//! \htmlinclude TypeNameChangeComplex1.msg.html


(defclass test_roslib_comm::TypeNameChangeComplex1
  :super ros::object
  :slots (_a _b ))

(defmethod test_roslib_comm::TypeNameChangeComplex1
  (:init
   (&key
    ((:a __a) (let (r) (dotimes (i 0) (push (instance test_roslib_comm::SameSubMsg1 :init) r)) r))
    ((:b __b) (let (r) (dotimes (i 10) (push (instance test_roslib_comm::SameSubMsg2 :init) r)) r))
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
    ;; test_roslib_comm/SameSubMsg1[] _a
    (apply #'+ (send-all _a :serialization-length)) 4
    ;; test_roslib_comm/SameSubMsg2[10] _b
    (apply #'+ (send-all _b :serialization-length))
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
     ;; test_roslib_comm/SameSubMsg2[10] _b
     (dolist (elem _b)
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
   ;; test_roslib_comm/SameSubMsg2[10] _b
   (dotimes (i 10)
     (send (elt _b i) :deserialize buf ptr-) (incf ptr- (send (elt _b i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get test_roslib_comm::TypeNameChangeComplex1 :md5sum-) "a01688a0991b9d7d9facf6d94b993e93")
(setf (get test_roslib_comm::TypeNameChangeComplex1 :datatype-) "test_roslib_comm/TypeNameChangeComplex1")
(setf (get test_roslib_comm::TypeNameChangeComplex1 :definition-)
      "SameSubMsg1[] a
SameSubMsg2[10] b

================================================================================
MSG: test_roslib_comm/SameSubMsg1
int32 a
float32 b
string c
uint64[10] d
float64[] e
================================================================================
MSG: test_roslib_comm/SameSubMsg2
int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/TypeNameChangeComplex1 "a01688a0991b9d7d9facf6d94b993e93")


