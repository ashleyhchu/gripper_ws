;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::FixedLengthArrayOfExternal)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'FixedLengthArrayOfExternal (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::FIXEDLENGTHARRAYOFEXTERNAL")
  (make-package "TEST_ROSCPP::FIXEDLENGTHARRAYOFEXTERNAL"))

(in-package "ROS")
;;//! \htmlinclude FixedLengthArrayOfExternal.msg.html
(if (not (find-package "ROSGRAPH_MSGS"))
  (ros::roseus-add-msgs "rosgraph_msgs"))


(defclass test_roscpp::FixedLengthArrayOfExternal
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::FixedLengthArrayOfExternal
  (:init
   (&key
    ((:a __a) (let (r) (dotimes (i 4) (push (instance rosgraph_msgs::Log :init) r)) r))
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
    ;; rosgraph_msgs/Log[4] _a
    (apply #'+ (send-all _a :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rosgraph_msgs/Log[4] _a
     (dolist (elem _a)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rosgraph_msgs/Log[4] _a
   (dotimes (i 4)
     (send (elt _a i) :deserialize buf ptr-) (incf ptr- (send (elt _a i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get test_roscpp::FixedLengthArrayOfExternal :md5sum-) "cc431047757f431ecd2754e03aa592f8")
(setf (get test_roscpp::FixedLengthArrayOfExternal :datatype-) "test_roscpp/FixedLengthArrayOfExternal")
(setf (get test_roscpp::FixedLengthArrayOfExternal :definition-)
      "# This comment has \"quotes\" in it and \\slashes\\
rosgraph_msgs/Log[4] a
================================================================================
MSG: rosgraph_msgs/Log
##
## Severity level constants
##
byte DEBUG=1 #debug level
byte INFO=2  #general level
byte WARN=4  #warning level
byte ERROR=8 #error level
byte FATAL=16 #fatal/critical level
##
## Fields
##
Header header
byte level
string name # name of the node
string msg # message 
string file # file the message came from
string function # function the message came from
uint32 line # line the message came from
string[] topics # topic names that the node publishes

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



(provide :test_roscpp/FixedLengthArrayOfExternal "cc431047757f431ecd2754e03aa592f8")


