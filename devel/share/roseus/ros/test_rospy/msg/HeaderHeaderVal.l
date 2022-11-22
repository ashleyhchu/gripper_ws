;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::HeaderHeaderVal)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'HeaderHeaderVal (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::HEADERHEADERVAL")
  (make-package "TEST_ROSPY::HEADERHEADERVAL"))

(in-package "ROS")
;;//! \htmlinclude HeaderHeaderVal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rospy::HeaderHeaderVal
  :super ros::object
  :slots (_header _val ))

(defmethod test_rospy::HeaderHeaderVal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:val __val) (instance test_rospy::HeaderVal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _val __val)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:val
   (&rest __val)
   (if (keywordp (car __val))
       (send* _val __val)
     (progn
       (if __val (setq _val (car __val)))
       _val)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; test_rospy/HeaderVal _val
    (send _val :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; test_rospy/HeaderVal _val
       (send _val :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; test_rospy/HeaderVal _val
     (send _val :deserialize buf ptr-) (incf ptr- (send _val :serialization-length))
   ;;
   self)
  )

(setf (get test_rospy::HeaderHeaderVal :md5sum-) "ae71c365b9bafbc4abaf37150c80a6b5")
(setf (get test_rospy::HeaderHeaderVal :datatype-) "test_rospy/HeaderHeaderVal")
(setf (get test_rospy::HeaderHeaderVal :definition-)
      "Header header
HeaderVal val
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

================================================================================
MSG: test_rospy/HeaderVal
Header header
string val
")



(provide :test_rospy/HeaderHeaderVal "ae71c365b9bafbc4abaf37150c80a6b5")


