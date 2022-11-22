;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::CustomHeader)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'CustomHeader (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::CUSTOMHEADER")
  (make-package "TEST_ROSCPP::CUSTOMHEADER"))

(in-package "ROS")
;;//! \htmlinclude CustomHeader.msg.html


(defclass test_roscpp::CustomHeader
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::CustomHeader
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
    ;; uint32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::CustomHeader :md5sum-) "a5233fa4f3f6e00d1d85da1779d19d1e")
(setf (get test_roscpp::CustomHeader :datatype-) "test_roscpp/CustomHeader")
(setf (get test_roscpp::CustomHeader :definition-)
      "uint32 a

")



(provide :test_roscpp/CustomHeader "a5233fa4f3f6e00d1d85da1779d19d1e")


