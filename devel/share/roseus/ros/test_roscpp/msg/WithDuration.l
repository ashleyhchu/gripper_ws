;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::WithDuration)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'WithDuration (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::WITHDURATION")
  (make-package "TEST_ROSCPP::WITHDURATION"))

(in-package "ROS")
;;//! \htmlinclude WithDuration.msg.html


(defclass test_roscpp::WithDuration
  :super ros::object
  :slots (_my_duration ))

(defmethod test_roscpp::WithDuration
  (:init
   (&key
    ((:my_duration __my_duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _my_duration __my_duration)
   self)
  (:my_duration
   (&optional __my_duration)
   (if __my_duration (setq _my_duration __my_duration)) _my_duration)
  (:serialization-length
   ()
   (+
    ;; duration _my_duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _my_duration
       (write-long (send _my_duration :sec) s) (write-long (send _my_duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _my_duration
     (send _my_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _my_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::WithDuration :md5sum-) "7ad52ba9d0229ba8b9c032400c77c367")
(setf (get test_roscpp::WithDuration :datatype-) "test_roscpp/WithDuration")
(setf (get test_roscpp::WithDuration :definition-)
      "duration my_duration
")



(provide :test_roscpp/WithDuration "7ad52ba9d0229ba8b9c032400c77c367")


