;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::TestHeader)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'TestHeader (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::TESTHEADER")
  (make-package "TEST_ROSMASTER::TESTHEADER"))

(in-package "ROS")
;;//! \htmlinclude TestHeader.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rosmaster::TestHeader
  :super ros::object
  :slots (_header _caller_id _orig_caller_id _auto_header ))

(defmethod test_rosmaster::TestHeader
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:caller_id __caller_id) "")
    ((:orig_caller_id __orig_caller_id) "")
    ((:auto_header __auto_header) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _caller_id (string __caller_id))
   (setq _orig_caller_id (string __orig_caller_id))
   (setq _auto_header (round __auto_header))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:caller_id
   (&optional __caller_id)
   (if __caller_id (setq _caller_id __caller_id)) _caller_id)
  (:orig_caller_id
   (&optional __orig_caller_id)
   (if __orig_caller_id (setq _orig_caller_id __orig_caller_id)) _orig_caller_id)
  (:auto_header
   (&optional __auto_header)
   (if __auto_header (setq _auto_header __auto_header)) _auto_header)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _caller_id
    4 (length _caller_id)
    ;; string _orig_caller_id
    4 (length _orig_caller_id)
    ;; byte _auto_header
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _caller_id
       (write-long (length _caller_id) s) (princ _caller_id s)
     ;; string _orig_caller_id
       (write-long (length _orig_caller_id) s) (princ _orig_caller_id s)
     ;; byte _auto_header
       (write-byte _auto_header s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _orig_caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orig_caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; byte _auto_header
     (setq _auto_header (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _auto_header 127) (setq _auto_header (- _auto_header 256)))
   ;;
   self)
  )

(setf (get test_rosmaster::TestHeader :md5sum-) "4b5a00f536da2f756ba6aebcf795a967")
(setf (get test_rosmaster::TestHeader :datatype-) "test_rosmaster/TestHeader")
(setf (get test_rosmaster::TestHeader :definition-)
      "Header header

# caller_id of most recent node to send this message
string caller_id
# caller_id of the original node to send this message
string orig_caller_id

byte auto_header # autoset header on response

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



(provide :test_rosmaster/TestHeader "4b5a00f536da2f756ba6aebcf795a967")


