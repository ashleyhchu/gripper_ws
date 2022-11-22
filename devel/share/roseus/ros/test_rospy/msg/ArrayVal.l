;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::ArrayVal)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'ArrayVal (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::ARRAYVAL")
  (make-package "TEST_ROSPY::ARRAYVAL"))

(in-package "ROS")
;;//! \htmlinclude ArrayVal.msg.html


(defclass test_rospy::ArrayVal
  :super ros::object
  :slots (_vals ))

(defmethod test_rospy::ArrayVal
  (:init
   (&key
    ((:vals __vals) (let (r) (dotimes (i 0) (push (instance test_rospy::Val :init) r)) r))
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
    ;; test_rospy/Val[] _vals
    (apply #'+ (send-all _vals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rospy/Val[] _vals
     (write-long (length _vals) s)
     (dolist (elem _vals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rospy/Val[] _vals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vals (let (r) (dotimes (i n) (push (instance test_rospy::Val :init) r)) r))
     (dolist (elem- _vals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_rospy::ArrayVal :md5sum-) "94e095e6a59bceb3466e4b23c166732e")
(setf (get test_rospy::ArrayVal :datatype-) "test_rospy/ArrayVal")
(setf (get test_rospy::ArrayVal :definition-)
      "Val[] vals
#Val[10] vals_fixed

================================================================================
MSG: test_rospy/Val
string val
")



(provide :test_rospy/ArrayVal "94e095e6a59bceb3466e4b23c166732e")


