;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::HeaderVal)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'HeaderVal (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::HEADERVAL")
  (make-package "TEST_ROSPY::HEADERVAL"))

(in-package "ROS")
;;//! \htmlinclude HeaderVal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rospy::HeaderVal
  :super ros::object
  :slots (_header _val ))

(defmethod test_rospy::HeaderVal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:val __val) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _val (string __val))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _val
    4 (length _val)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _val
       (write-long (length _val) s) (princ _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _val
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _val (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_rospy::HeaderVal :md5sum-) "c3262d64205f82361bc7aa4173b8fe64")
(setf (get test_rospy::HeaderVal :datatype-) "test_rospy/HeaderVal")
(setf (get test_rospy::HeaderVal :definition-)
      "Header header
string val
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :test_rospy/HeaderVal "c3262d64205f82361bc7aa4173b8fe64")


