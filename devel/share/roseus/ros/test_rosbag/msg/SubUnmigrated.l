;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::SubUnmigrated)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'SubUnmigrated (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::SUBUNMIGRATED")
  (make-package "TEST_ROSBAG::SUBUNMIGRATED"))

(in-package "ROS")
;;//! \htmlinclude SubUnmigrated.msg.html


(defclass test_rosbag::SubUnmigrated
  :super ros::object
  :slots (_field1 _field2 ))

(defmethod test_rosbag::SubUnmigrated
  (:init
   (&key
    ((:field1 __field1) 0)
    ((:field2 __field2) (instance test_rosbag::Unmigrated :init))
    )
   (send-super :init)
   (setq _field1 (round __field1))
   (setq _field2 __field2)
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
  (:serialization-length
   ()
   (+
    ;; int32 _field1
    4
    ;; test_rosbag/Unmigrated _field2
    (send _field2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _field1
       (write-long _field1 s)
     ;; test_rosbag/Unmigrated _field2
       (send _field2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _field1
     (setq _field1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; test_rosbag/Unmigrated _field2
     (send _field2 :deserialize buf ptr-) (incf ptr- (send _field2 :serialization-length))
   ;;
   self)
  )

(setf (get test_rosbag::SubUnmigrated :md5sum-) "4aa26f1425c68e8cf54c7adae649c1d9")
(setf (get test_rosbag::SubUnmigrated :datatype-) "test_rosbag/SubUnmigrated")
(setf (get test_rosbag::SubUnmigrated :definition-)
      "int32      field1 # 92
Unmigrated field2 # (12, \"uuiasjs\", 61.7)

================================================================================
MSG: test_rosbag/Unmigrated
int32   field1 #12
string  field2 #\"uuiasjs\"
float32 field3 #61.7
float64 field4 #123.4
")



(provide :test_rosbag/SubUnmigrated "4aa26f1425c68e8cf54c7adae649c1d9")


