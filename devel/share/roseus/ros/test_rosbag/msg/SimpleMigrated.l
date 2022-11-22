;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::SimpleMigrated)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'SimpleMigrated (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::SIMPLEMIGRATED")
  (make-package "TEST_ROSBAG::SIMPLEMIGRATED"))

(in-package "ROS")
;;//! \htmlinclude SimpleMigrated.msg.html


(defclass test_rosbag::SimpleMigrated
  :super ros::object
  :slots (_data ))

(defmethod test_rosbag::SimpleMigrated
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosbag::SimpleMigrated :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get test_rosbag::SimpleMigrated :datatype-) "test_rosbag/SimpleMigrated")
(setf (get test_rosbag::SimpleMigrated :definition-)
      "int32 data # 42
")



(provide :test_rosbag/SimpleMigrated "da5909fbe378aeaf85e547e830cc1bb7")


