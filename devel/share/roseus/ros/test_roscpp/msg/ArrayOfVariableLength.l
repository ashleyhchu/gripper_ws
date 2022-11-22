;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::ArrayOfVariableLength)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'ArrayOfVariableLength (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::ARRAYOFVARIABLELENGTH")
  (make-package "TEST_ROSCPP::ARRAYOFVARIABLELENGTH"))

(in-package "ROS")
;;//! \htmlinclude ArrayOfVariableLength.msg.html


(defclass test_roscpp::ArrayOfVariableLength
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::ArrayOfVariableLength
  (:init
   (&key
    ((:a __a) (let (r) (dotimes (i 4) (push (instance test_roscpp::VariableLength :init) r)) r))
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
    ;; test_roscpp/VariableLength[4] _a
    (apply #'+ (send-all _a :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roscpp/VariableLength[4] _a
     (dolist (elem _a)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roscpp/VariableLength[4] _a
   (dotimes (i 4)
     (send (elt _a i) :deserialize buf ptr-) (incf ptr- (send (elt _a i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get test_roscpp::ArrayOfVariableLength :md5sum-) "e7404d454a50b82c426a3a2c76fbcefd")
(setf (get test_roscpp::ArrayOfVariableLength :datatype-) "test_roscpp/ArrayOfVariableLength")
(setf (get test_roscpp::ArrayOfVariableLength :definition-)
      "VariableLength[4] a
================================================================================
MSG: test_roscpp/VariableLength
uint32[] a

")



(provide :test_roscpp/ArrayOfVariableLength "e7404d454a50b82c426a3a2c76fbcefd")


