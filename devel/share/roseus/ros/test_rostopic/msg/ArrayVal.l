;; Auto-generated. Do not edit!


(when (boundp 'test_rostopic::ArrayVal)
  (if (not (find-package "TEST_ROSTOPIC"))
    (make-package "TEST_ROSTOPIC"))
  (shadow 'ArrayVal (find-package "TEST_ROSTOPIC")))
(unless (find-package "TEST_ROSTOPIC::ARRAYVAL")
  (make-package "TEST_ROSTOPIC::ARRAYVAL"))

(in-package "ROS")
;;//! \htmlinclude ArrayVal.msg.html


(defclass test_rostopic::ArrayVal
  :super ros::object
  :slots (_vals ))

(defmethod test_rostopic::ArrayVal
  (:init
   (&key
    ((:vals __vals) (let (r) (dotimes (i 0) (push (instance test_rostopic::Val :init) r)) r))
    )
   (send-super :init)
   (setq _vals __vals)
   self)
  (:vals
   (&rest __vals)
   (if (keywordp (car __vals))
       (send* _vals __vals)
     (progn
       (if __vals (setq _vals (car __vals)))
       _vals)))
  (:serialization-length
   ()
   (+
    ;; test_rostopic/Val[] _vals
    (apply #'+ (send-all _vals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rostopic/Val[] _vals
     (write-long (length _vals) s)
     (dolist (elem _vals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rostopic/Val[] _vals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vals (let (r) (dotimes (i n) (push (instance test_rostopic::Val :init) r)) r))
     (dolist (elem- _vals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_rostopic::ArrayVal :md5sum-) "94e095e6a59bceb3466e4b23c166732e")
(setf (get test_rostopic::ArrayVal :datatype-) "test_rostopic/ArrayVal")
(setf (get test_rostopic::ArrayVal :definition-)
      "Val[] vals
================================================================================
MSG: test_rostopic/Val
string val
")



(provide :test_rostopic/ArrayVal "94e095e6a59bceb3466e4b23c166732e")


