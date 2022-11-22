;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::WithHeader)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'WithHeader (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::WITHHEADER")
  (make-package "TEST_ROSCPP::WITHHEADER"))

(in-package "ROS")
;;//! \htmlinclude WithHeader.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roscpp::WithHeader
  :super ros::object
  :slots (_header _a ))

(defmethod test_roscpp::WithHeader
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _a (round __a))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::WithHeader :md5sum-) "ea0b9ad283b0d4dcc850b560da7b6965")
(setf (get test_roscpp::WithHeader :datatype-) "test_roscpp/WithHeader")
(setf (get test_roscpp::WithHeader :definition-)
      "Header header
uint32 a

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



(provide :test_roscpp/WithHeader "ea0b9ad283b0d4dcc850b560da7b6965")


