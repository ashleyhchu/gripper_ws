;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::RosmsgA)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'RosmsgA (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::ROSMSGA")
  (make-package "TEST_ROSMASTER::ROSMSGA"))

(in-package "ROS")
;;//! \htmlinclude RosmsgA.msg.html


(defclass test_rosmaster::RosmsgA
  :super ros::object
  :slots (_a ))

(defmethod test_rosmaster::RosmsgA
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosmaster::RosmsgA :md5sum-) "5c9fb1a886e81e3162a5c87bf55c072b")
(setf (get test_rosmaster::RosmsgA :datatype-) "test_rosmaster/RosmsgA")
(setf (get test_rosmaster::RosmsgA :definition-)
      "int32 a

")



(provide :test_rosmaster/RosmsgA "5c9fb1a886e81e3162a5c87bf55c072b")


