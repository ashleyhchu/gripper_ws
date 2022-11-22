;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::TestEmpty)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'TestEmpty (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::TESTEMPTY")
  (make-package "TEST_ROSCPP::TESTEMPTY"))

(in-package "ROS")
;;//! \htmlinclude TestEmpty.msg.html


(defclass test_roscpp::TestEmpty
  :super ros::object
  :slots ())

(defmethod test_roscpp::TestEmpty
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get test_roscpp::TestEmpty :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get test_roscpp::TestEmpty :datatype-) "test_roscpp/TestEmpty")
(setf (get test_roscpp::TestEmpty :definition-)
      "
")



(provide :test_roscpp/TestEmpty "d41d8cd98f00b204e9800998ecf8427e")


