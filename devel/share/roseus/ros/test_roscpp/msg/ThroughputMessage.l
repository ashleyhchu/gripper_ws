;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::ThroughputMessage)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'ThroughputMessage (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::THROUGHPUTMESSAGE")
  (make-package "TEST_ROSCPP::THROUGHPUTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ThroughputMessage.msg.html


(defclass test_roscpp::ThroughputMessage
  :super ros::object
  :slots (_array ))

(defmethod test_roscpp::ThroughputMessage
  (:init
   (&key
    ((:array __array) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _array __array)
   self)
  (:array
   (&optional __array)
   (if __array (setq _array __array)) _array)
  (:serialization-length
   ()
   (+
    ;; uint8[] _array
    (* 1    (length _array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _array
     (write-long (length _array) s)
     (princ _array s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _array
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _array (make-array n :element-type :char))
     (replace _array buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_roscpp::ThroughputMessage :md5sum-) "dda33390139e301b6c212139192418ca")
(setf (get test_roscpp::ThroughputMessage :datatype-) "test_roscpp/ThroughputMessage")
(setf (get test_roscpp::ThroughputMessage :definition-)
      "uint8[] array


")



(provide :test_roscpp/ThroughputMessage "dda33390139e301b6c212139192418ca")


