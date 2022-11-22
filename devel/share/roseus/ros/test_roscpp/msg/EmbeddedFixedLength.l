;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::EmbeddedFixedLength)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'EmbeddedFixedLength (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::EMBEDDEDFIXEDLENGTH")
  (make-package "TEST_ROSCPP::EMBEDDEDFIXEDLENGTH"))

(in-package "ROS")
;;//! \htmlinclude EmbeddedFixedLength.msg.html


(defclass test_roscpp::EmbeddedFixedLength
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::EmbeddedFixedLength
  (:init
   (&key
    ((:a __a) (instance test_roscpp::FixedLength :init))
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
    ;; test_roscpp/FixedLength _a
    (send _a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roscpp/FixedLength _a
       (send _a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roscpp/FixedLength _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;;
   self)
  )

(setf (get test_roscpp::EmbeddedFixedLength :md5sum-) "770e15962592d1fbea70b6b820ba16d9")
(setf (get test_roscpp::EmbeddedFixedLength :datatype-) "test_roscpp/EmbeddedFixedLength")
(setf (get test_roscpp::EmbeddedFixedLength :definition-)
      "FixedLength a

================================================================================
MSG: test_roscpp/FixedLength
uint32 a
float32 b

")



(provide :test_roscpp/EmbeddedFixedLength "770e15962592d1fbea70b6b820ba16d9")


