;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::MigratedMixed)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'MigratedMixed (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::MIGRATEDMIXED")
  (make-package "TEST_ROSBAG::MIGRATEDMIXED"))

(in-package "ROS")
;;//! \htmlinclude MigratedMixed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rosbag::MigratedMixed
  :super ros::object
  :slots (_header _field1 _field2 ))

(defmethod test_rosbag::MigratedMixed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:field1 __field1) (instance test_rosbag::MigratedImplicit :init))
    ((:field2 __field2) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _field1 __field1)
   (setq _field2 (round __field2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:field1
   (&rest __field1)
   (if (keywordp (car __field1))
       (send* _field1 __field1)
     (progn
       (if __field1 (setq _field1 (car __field1)))
       _field1)))
  (:field2
   (&optional __field2)
   (if __field2 (setq _field2 __field2)) _field2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; test_rosbag/MigratedImplicit _field1
    (send _field1 :serialization-length)
    ;; int32 _field2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; test_rosbag/MigratedImplicit _field1
       (send _field1 :serialize s)
     ;; int32 _field2
       (write-long _field2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; test_rosbag/MigratedImplicit _field1
     (send _field1 :deserialize buf ptr-) (incf ptr- (send _field1 :serialization-length))
   ;; int32 _field2
     (setq _field2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosbag::MigratedMixed :md5sum-) "f5edc5b4f4c64456755b51dacf2f13c8")
(setf (get test_rosbag::MigratedMixed :datatype-) "test_rosbag/MigratedMixed")
(setf (get test_rosbag::MigratedMixed :definition-)
      "Header             header
MigratedImplicit   field1 #(34, 16.32, \"kjljene\", (58.2, \"aldfkja 17\", 82))
int32              field2 #59

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
MSG: test_rosbag/MigratedImplicit
Header  header
MigratedExplicit field4 #(58.2 \"aldfkja 17\", 82)
string  field3 #\"kljene\"
float32 field2 #16.32
int32   field1 #34



================================================================================
MSG: test_rosbag/MigratedExplicit
Header  header
float32 field2 #58.2
string  combo_field3 #\"aldfkja 17\"
int32   field4 #82

")



(provide :test_rosbag/MigratedMixed "f5edc5b4f4c64456755b51dacf2f13c8")


