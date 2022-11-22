;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::HeaderTest)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'HeaderTest (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::HEADERTEST")
  (make-package "TEST_ROSLIB_COMM::HEADERTEST"))

(in-package "ROS")
;;//! \htmlinclude HeaderTest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roslib_comm::HeaderTest
  :super ros::object
  :slots (_header _i32 ))

(defmethod test_roslib_comm::HeaderTest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:i32 __i32) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _i32 (round __i32))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:i32
   (&optional __i32)
   (if __i32 (setq _i32 __i32)) _i32)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _i32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _i32
       (write-long _i32 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _i32
     (setq _i32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roslib_comm::HeaderTest :md5sum-) "4426b8931bec8509041d64c6a89b54a2")
(setf (get test_roslib_comm::HeaderTest :datatype-) "test_roslib_comm/HeaderTest")
(setf (get test_roslib_comm::HeaderTest :definition-)
      "Header header
int32 i32
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



(provide :test_roslib_comm/HeaderTest "4426b8931bec8509041d64c6a89b54a2")


