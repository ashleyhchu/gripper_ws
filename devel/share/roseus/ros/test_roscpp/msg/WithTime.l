;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::WithTime)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'WithTime (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::WITHTIME")
  (make-package "TEST_ROSCPP::WITHTIME"))

(in-package "ROS")
;;//! \htmlinclude WithTime.msg.html


(defclass test_roscpp::WithTime
  :super ros::object
  :slots (_my_time ))

(defmethod test_roscpp::WithTime
  (:init
   (&key
    ((:my_time __my_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _my_time __my_time)
   self)
  (:my_time
   (&optional __my_time)
   (if __my_time (setq _my_time __my_time)) _my_time)
  (:serialization-length
   ()
   (+
    ;; time _my_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _my_time
       (write-long (send _my_time :sec) s) (write-long (send _my_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _my_time
     (send _my_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _my_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::WithTime :md5sum-) "60f189e40cfeaefbc79e6cdbd1605364")
(setf (get test_roscpp::WithTime :datatype-) "test_roscpp/WithTime")
(setf (get test_roscpp::WithTime :definition-)
      "time my_time
")



(provide :test_roscpp/WithTime "60f189e40cfeaefbc79e6cdbd1605364")


