;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::EmbeddedVariableLength)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'EmbeddedVariableLength (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::EMBEDDEDVARIABLELENGTH")
  (make-package "TEST_ROSCPP::EMBEDDEDVARIABLELENGTH"))

(in-package "ROS")
;;//! \htmlinclude EmbeddedVariableLength.msg.html


(defclass test_roscpp::EmbeddedVariableLength
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::EmbeddedVariableLength
  (:init
   (&key
    ((:a __a) (instance test_roscpp::VariableLength :init))
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
    ;; test_roscpp/VariableLength _a
    (send _a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roscpp/VariableLength _a
       (send _a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roscpp/VariableLength _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;;
   self)
  )

(setf (get test_roscpp::EmbeddedVariableLength :md5sum-) "e7404d454a50b82c426a3a2c76fbcefd")
(setf (get test_roscpp::EmbeddedVariableLength :datatype-) "test_roscpp/EmbeddedVariableLength")
(setf (get test_roscpp::EmbeddedVariableLength :definition-)
      "VariableLength a

================================================================================
MSG: test_roscpp/VariableLength
uint32[] a

")



(provide :test_roscpp/EmbeddedVariableLength "e7404d454a50b82c426a3a2c76fbcefd")


