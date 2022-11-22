;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::Simple)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'Simple (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::SIMPLE")
  (make-package "TEST_ROSBAG::SIMPLE"))

(in-package "ROS")
;;//! \htmlinclude Simple.msg.html


(defclass test_rosbag::Simple
  :super ros::object
  :slots (_field1 ))

(defmethod test_rosbag::Simple
  (:init
   (&key
    ((:field1 __field1) 0)
    )
   (send-super :init)
   (setq _field1 (round __field1))
   self)
  (:field1
   (&optional __field1)
   (if __field1 (setq _field1 __field1)) _field1)
  (:serialization-length
   ()
   (+
    ;; int32 _field1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _field1
       (write-long _field1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _field1
     (setq _field1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosbag::Simple :md5sum-) "d13c87301de1ed73a1dd65764ac6019b")
(setf (get test_rosbag::Simple :datatype-) "test_rosbag/Simple")
(setf (get test_rosbag::Simple :definition-)
      "int32 field1 #42
")



(provide :test_rosbag/Simple "d13c87301de1ed73a1dd65764ac6019b")


