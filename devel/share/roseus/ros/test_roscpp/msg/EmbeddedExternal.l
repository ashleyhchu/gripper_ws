;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::EmbeddedExternal)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'EmbeddedExternal (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::EMBEDDEDEXTERNAL")
  (make-package "TEST_ROSCPP::EMBEDDEDEXTERNAL"))

(in-package "ROS")
;;//! \htmlinclude EmbeddedExternal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roscpp::EmbeddedExternal
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::EmbeddedExternal
  (:init
   (&key
    ((:a __a) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _a __a)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/UInt8 _a
    (send _a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/UInt8 _a
       (send _a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/UInt8 _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;;
   self)
  )

(setf (get test_roscpp::EmbeddedExternal :md5sum-) "a09b324865f98bbf605e59ed0cefbc1d")
(setf (get test_roscpp::EmbeddedExternal :datatype-) "test_roscpp/EmbeddedExternal")
(setf (get test_roscpp::EmbeddedExternal :definition-)
      "std_msgs/UInt8 a
================================================================================
MSG: std_msgs/UInt8
uint8 data

")



(provide :test_roscpp/EmbeddedExternal "a09b324865f98bbf605e59ed0cefbc1d")


