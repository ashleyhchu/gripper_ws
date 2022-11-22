;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::Val)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'Val (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::VAL")
  (make-package "TEST_ROSPY::VAL"))

(in-package "ROS")
;;//! \htmlinclude Val.msg.html


(defclass test_rospy::Val
  :super ros::object
  :slots (_val ))

(defmethod test_rospy::Val
  (:init
   (&key
    ((:val __val) "")
    )
   (send-super :init)
   (setq _val (string __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; string _val
    4 (length _val)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _val
       (write-long (length _val) s) (princ _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _val
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _val (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_rospy::Val :md5sum-) "c45577ce53559408f0f69fe465be7c70")
(setf (get test_rospy::Val :datatype-) "test_rospy/Val")
(setf (get test_rospy::Val :definition-)
      "string val
")



(provide :test_rospy/Val "c45577ce53559408f0f69fe465be7c70")


