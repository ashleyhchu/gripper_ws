;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::RosmsgC)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'RosmsgC (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::ROSMSGC")
  (make-package "TEST_ROSMASTER::ROSMSGC"))

(in-package "ROS")
;;//! \htmlinclude RosmsgC.msg.html


(defclass test_rosmaster::RosmsgC
  :super ros::object
  :slots (_s1 _s2 ))

(defmethod test_rosmaster::RosmsgC
  (:init
   (&key
    ((:s1 __s1) (instance test_rosmaster::String :init))
    ((:s2 __s2) (instance test_rosmaster::String :init))
    )
   (send-super :init)
   (setq _s1 __s1)
   (setq _s2 __s2)
   self)
  (:s1
   (&rest __s1)
   (if (keywordp (car __s1))
       (send* _s1 __s1)
     (progn
       (if __s1 (setq _s1 (car __s1)))
       _s1)))
  (:s2
   (&rest __s2)
   (if (keywordp (car __s2))
       (send* _s2 __s2)
     (progn
       (if __s2 (setq _s2 (car __s2)))
       _s2)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/String _s1
    (send _s1 :serialization-length)
    ;; test_rosmaster/String _s2
    (send _s2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/String _s1
       (send _s1 :serialize s)
     ;; test_rosmaster/String _s2
       (send _s2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/String _s1
     (send _s1 :deserialize buf ptr-) (incf ptr- (send _s1 :serialization-length))
   ;; test_rosmaster/String _s2
     (send _s2 :deserialize buf ptr-) (incf ptr- (send _s2 :serialization-length))
   ;;
   self)
  )

(setf (get test_rosmaster::RosmsgC :md5sum-) "cc91a7e3c1498150f3554cbcab2800d2")
(setf (get test_rosmaster::RosmsgC :datatype-) "test_rosmaster/RosmsgC")
(setf (get test_rosmaster::RosmsgC :definition-)
      "String s1
String s2

================================================================================
MSG: test_rosmaster/String
# Copy of std_msgs/String.msg to avoid having tests require a dependency on std_msgs.
string data

")



(provide :test_rosmaster/RosmsgC "cc91a7e3c1498150f3554cbcab2800d2")


