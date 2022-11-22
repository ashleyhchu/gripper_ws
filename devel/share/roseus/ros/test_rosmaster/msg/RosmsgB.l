;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::RosmsgB)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'RosmsgB (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::ROSMSGB")
  (make-package "TEST_ROSMASTER::ROSMSGB"))

(in-package "ROS")
;;//! \htmlinclude RosmsgB.msg.html


(defclass test_rosmaster::RosmsgB
  :super ros::object
  :slots (_empty ))

(defmethod test_rosmaster::RosmsgB
  (:init
   (&key
    ((:empty __empty) (instance test_rosmaster::Empty :init))
    )
   (send-super :init)
   (setq _empty __empty)
   self)
  (:empty
   (&rest __empty)
   (if (keywordp (car __empty))
       (send* _empty __empty)
     (progn
       (if __empty (setq _empty (car __empty)))
       _empty)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/Empty _empty
    (send _empty :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/Empty _empty
       (send _empty :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/Empty _empty
     (send _empty :deserialize buf ptr-) (incf ptr- (send _empty :serialization-length))
   ;;
   self)
  )

(setf (get test_rosmaster::RosmsgB :md5sum-) "6aac6c697d5414bc0fcede8c33981d0e")
(setf (get test_rosmaster::RosmsgB :datatype-) "test_rosmaster/RosmsgB")
(setf (get test_rosmaster::RosmsgB :definition-)
      "Empty empty

================================================================================
MSG: test_rosmaster/Empty

")



(provide :test_rosmaster/RosmsgB "6aac6c697d5414bc0fcede8c33981d0e")


