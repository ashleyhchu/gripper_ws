;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::MigratedImplicit)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'MigratedImplicit (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::MIGRATEDIMPLICIT")
  (make-package "TEST_ROSBAG::MIGRATEDIMPLICIT"))

(in-package "ROS")
;;//! \htmlinclude MigratedImplicit.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rosbag::MigratedImplicit
  :super ros::object
  :slots (_header _field4 _field3 _field2 _field1 ))

(defmethod test_rosbag::MigratedImplicit
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:field4 __field4) (instance test_rosbag::MigratedExplicit :init))
    ((:field3 __field3) "")
    ((:field2 __field2) 0.0)
    ((:field1 __field1) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _field4 __field4)
   (setq _field3 (string __field3))
   (setq _field2 (float __field2))
   (setq _field1 (round __field1))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:field4
   (&rest __field4)
   (if (keywordp (car __field4))
       (send* _field4 __field4)
     (progn
       (if __field4 (setq _field4 (car __field4)))
       _field4)))
  (:field3
   (&optional __field3)
   (if __field3 (setq _field3 __field3)) _field3)
  (:field2
   (&optional __field2)
   (if __field2 (setq _field2 __field2)) _field2)
  (:field1
   (&optional __field1)
   (if __field1 (setq _field1 __field1)) _field1)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; test_rosbag/MigratedExplicit _field4
    (send _field4 :serialization-length)
    ;; string _field3
    4 (length _field3)
    ;; float32 _field2
    4
    ;; int32 _field1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; test_rosbag/MigratedExplicit _field4
       (send _field4 :serialize s)
     ;; string _field3
       (write-long (length _field3) s) (princ _field3 s)
     ;; float32 _field2
       (sys::poke _field2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _field1
       (write-long _field1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; test_rosbag/MigratedExplicit _field4
     (send _field4 :deserialize buf ptr-) (incf ptr- (send _field4 :serialization-length))
   ;; string _field3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _field3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _field2
     (setq _field2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _field1
     (setq _field1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosbag::MigratedImplicit :md5sum-) "90cb5a45bdc5b3810920ed0b9d482572")
(setf (get test_rosbag::MigratedImplicit :datatype-) "test_rosbag/MigratedImplicit")
(setf (get test_rosbag::MigratedImplicit :definition-)
      "Header  header
MigratedExplicit field4 #(58.2 \"aldfkja 17\", 82)
string  field3 #\"kljene\"
float32 field2 #16.32
int32   field1 #34



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
MSG: test_rosbag/MigratedExplicit
Header  header
float32 field2 #58.2
string  combo_field3 #\"aldfkja 17\"
int32   field4 #82

")



(provide :test_rosbag/MigratedImplicit "90cb5a45bdc5b3810920ed0b9d482572")


