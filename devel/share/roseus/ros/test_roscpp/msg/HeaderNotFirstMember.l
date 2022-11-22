;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::HeaderNotFirstMember)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'HeaderNotFirstMember (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::HEADERNOTFIRSTMEMBER")
  (make-package "TEST_ROSCPP::HEADERNOTFIRSTMEMBER"))

(in-package "ROS")
;;//! \htmlinclude HeaderNotFirstMember.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roscpp::HeaderNotFirstMember
  :super ros::object
  :slots (_foo _header ))

(defmethod test_roscpp::HeaderNotFirstMember
  (:init
   (&key
    ((:foo __foo) 0)
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _foo (round __foo))
   (setq _header __header)
   self)
  (:foo
   (&optional __foo)
   (if __foo (setq _foo __foo)) _foo)
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
    ;; int8 _foo
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _foo
       (write-byte _foo s)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _foo
     (setq _foo (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _foo 127) (setq _foo (- _foo 256)))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get test_roscpp::HeaderNotFirstMember :md5sum-) "c7ed781820d7a36c5947d0f441f50964")
(setf (get test_roscpp::HeaderNotFirstMember :datatype-) "test_roscpp/HeaderNotFirstMember")
(setf (get test_roscpp::HeaderNotFirstMember :definition-)
      "int8 foo
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



(provide :test_roscpp/HeaderNotFirstMember "c7ed781820d7a36c5947d0f441f50964")


