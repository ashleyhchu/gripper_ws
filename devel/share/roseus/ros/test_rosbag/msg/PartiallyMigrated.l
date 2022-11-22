;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::PartiallyMigrated)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'PartiallyMigrated (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::PARTIALLYMIGRATED")
  (make-package "TEST_ROSBAG::PARTIALLYMIGRATED"))

(in-package "ROS")
;;//! \htmlinclude PartiallyMigrated.msg.html


(defclass test_rosbag::PartiallyMigrated
  :super ros::object
  :slots (_field1 _field2 _field3 _field4 _field5 ))

(defmethod test_rosbag::PartiallyMigrated
  (:init
   (&key
    ((:field1 __field1) 0)
    ((:field2 __field2) (instance test_rosbag::MigratedExplicit :init))
    ((:field3 __field3) "")
    ((:field4 __field4) 0.0)
    ((:field5 __field5) 0.0)
    )
   (send-super :init)
   (setq _field1 (round __field1))
   (setq _field2 __field2)
   (setq _field3 (string __field3))
   (setq _field4 (float __field4))
   (setq _field5 (float __field5))
   self)
  (:field1
   (&optional __field1)
   (if __field1 (setq _field1 __field1)) _field1)
  (:field2
   (&rest __field2)
   (if (keywordp (car __field2))
       (send* _field2 __field2)
     (progn
       (if __field2 (setq _field2 (car __field2)))
       _field2)))
  (:field3
   (&optional __field3)
   (if __field3 (setq _field3 __field3)) _field3)
  (:field4
   (&optional __field4)
   (if __field4 (setq _field4 __field4)) _field4)
  (:field5
   (&optional __field5)
   (if __field5 (setq _field5 __field5)) _field5)
  (:serialization-length
   ()
   (+
    ;; int32 _field1
    4
    ;; test_rosbag/MigratedExplicit _field2
    (send _field2 :serialization-length)
    ;; string _field3
    4 (length _field3)
    ;; float32 _field4
    4
    ;; float64 _field5
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _field1
       (write-long _field1 s)
     ;; test_rosbag/MigratedExplicit _field2
       (send _field2 :serialize s)
     ;; string _field3
       (write-long (length _field3) s) (princ _field3 s)
     ;; float32 _field4
       (sys::poke _field4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _field5
       (sys::poke _field5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _field1
     (setq _field1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; test_rosbag/MigratedExplicit _field2
     (send _field2 :deserialize buf ptr-) (incf ptr- (send _field2 :serialization-length))
   ;; string _field3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _field3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _field4
     (setq _field4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _field5
     (setq _field5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get test_rosbag::PartiallyMigrated :md5sum-) "45f99fcf57ef956dd2a6a16472643507")
(setf (get test_rosbag::PartiallyMigrated :datatype-) "test_rosbag/PartiallyMigrated")
(setf (get test_rosbag::PartiallyMigrated :definition-)
      "int32            field1 # 40
MigratedExplicit field2 # (58.2, \"aldfkja 17\", 82)
string           field3 # \"radasdk\"
float32          field4 # 63.4
float64          field5 # 123.4

================================================================================
MSG: test_rosbag/MigratedExplicit
Header  header
float32 field2 #58.2
string  combo_field3 #\"aldfkja 17\"
int32   field4 #82

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



(provide :test_rosbag/PartiallyMigrated "45f99fcf57ef956dd2a6a16472643507")


