;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::MigratedAddSub)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'MigratedAddSub (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::MIGRATEDADDSUB")
  (make-package "TEST_ROSBAG::MIGRATEDADDSUB"))

(in-package "ROS")
;;//! \htmlinclude MigratedAddSub.msg.html


(defclass test_rosbag::MigratedAddSub
  :super ros::object
  :slots (_field1 _field2 ))

(defmethod test_rosbag::MigratedAddSub
  (:init
   (&key
    ((:field1 __field1) (instance test_rosbag::Simple :init))
    ((:field2 __field2) (instance test_rosbag::Simple :init))
    )
   (send-super :init)
   (setq _field1 __field1)
   (setq _field2 __field2)
   self)
  (:field1
   (&rest __field1)
   (if (keywordp (car __field1))
       (send* _field1 __field1)
     (progn
       (if __field1 (setq _field1 (car __field1)))
       _field1)))
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
    ;; test_rosbag/Simple _field1
    (send _field1 :serialization-length)
    ;; test_rosbag/Simple _field2
    (send _field2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosbag/Simple _field1
       (send _field1 :serialize s)
     ;; test_rosbag/Simple _field2
       (send _field2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosbag/Simple _field1
     (send _field1 :deserialize buf ptr-) (incf ptr- (send _field1 :serialization-length))
   ;; test_rosbag/Simple _field2
     (send _field2 :deserialize buf ptr-) (incf ptr- (send _field2 :serialization-length))
   ;;
   self)
  )

(setf (get test_rosbag::MigratedAddSub :md5sum-) "f54ff3b9ba622359fa96ac15d4498153")
(setf (get test_rosbag::MigratedAddSub :datatype-) "test_rosbag/MigratedAddSub")
(setf (get test_rosbag::MigratedAddSub :definition-)
      "Simple field1
Simple field2
================================================================================
MSG: test_rosbag/Simple
int32 field1 #42
")



(provide :test_rosbag/MigratedAddSub "f54ff3b9ba622359fa96ac15d4498153")


