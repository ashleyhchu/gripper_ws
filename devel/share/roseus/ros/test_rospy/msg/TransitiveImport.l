;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::TransitiveImport)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'TransitiveImport (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::TRANSITIVEIMPORT")
  (make-package "TEST_ROSPY::TRANSITIVEIMPORT"))

(in-package "ROS")
;;//! \htmlinclude TransitiveImport.msg.html


(defclass test_rospy::TransitiveImport
  :super ros::object
  :slots (_data ))

(defmethod test_rospy::TransitiveImport
  (:init
   (&key
    ((:data __data) (instance test_rospy::EmbedTest :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; test_rospy/EmbedTest _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rospy/EmbedTest _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rospy/EmbedTest _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get test_rospy::TransitiveImport :md5sum-) "27665539bacd6d2d02a7538692d3d3d0")
(setf (get test_rospy::TransitiveImport :datatype-) "test_rospy/TransitiveImport")
(setf (get test_rospy::TransitiveImport :definition-)
      "# Bug #2133/2139: EmbedTest uses std_msgs, so TransitiveImport needs it as well
EmbedTest data
================================================================================
MSG: test_rospy/EmbedTest
std_msgs/String str1
std_msgs/Int32 int1
std_msgs/Int32[] ints
Val val
Val[] vals
ArrayVal[] arrayval

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: test_rospy/Val
string val
================================================================================
MSG: test_rospy/ArrayVal
Val[] vals
#Val[10] vals_fixed

")



(provide :test_rospy/TransitiveImport "27665539bacd6d2d02a7538692d3d3d0")


