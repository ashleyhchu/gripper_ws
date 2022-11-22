;; Auto-generated. Do not edit!


(when (boundp 'test_rosservice::HeaderEcho)
  (if (not (find-package "TEST_ROSSERVICE"))
    (make-package "TEST_ROSSERVICE"))
  (shadow 'HeaderEcho (find-package "TEST_ROSSERVICE")))
(unless (find-package "TEST_ROSSERVICE::HEADERECHO")
  (make-package "TEST_ROSSERVICE::HEADERECHO"))
(unless (find-package "TEST_ROSSERVICE::HEADERECHOREQUEST")
  (make-package "TEST_ROSSERVICE::HEADERECHOREQUEST"))
(unless (find-package "TEST_ROSSERVICE::HEADERECHORESPONSE")
  (make-package "TEST_ROSSERVICE::HEADERECHORESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rosservice::HeaderEchoRequest
  :super ros::object
  :slots (_header ))

(defmethod test_rosservice::HeaderEchoRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(defclass test_rosservice::HeaderEchoResponse
  :super ros::object
  :slots (_header ))

(defmethod test_rosservice::HeaderEchoResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(defclass test_rosservice::HeaderEcho
  :super ros::object
  :slots ())

(setf (get test_rosservice::HeaderEcho :md5sum-) "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(setf (get test_rosservice::HeaderEcho :datatype-) "test_rosservice/HeaderEcho")
(setf (get test_rosservice::HeaderEcho :request) test_rosservice::HeaderEchoRequest)
(setf (get test_rosservice::HeaderEcho :response) test_rosservice::HeaderEchoResponse)

(defmethod test_rosservice::HeaderEchoRequest
  (:response () (instance test_rosservice::HeaderEchoResponse :init)))

(setf (get test_rosservice::HeaderEchoRequest :md5sum-) "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(setf (get test_rosservice::HeaderEchoRequest :datatype-) "test_rosservice/HeaderEchoRequest")
(setf (get test_rosservice::HeaderEchoRequest :definition-)
      "Header header

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
---
Header header


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

(setf (get test_rosservice::HeaderEchoResponse :md5sum-) "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(setf (get test_rosservice::HeaderEchoResponse :datatype-) "test_rosservice/HeaderEchoResponse")
(setf (get test_rosservice::HeaderEchoResponse :definition-)
      "Header header

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
---
Header header


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



(provide :test_rosservice/HeaderEcho "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")


