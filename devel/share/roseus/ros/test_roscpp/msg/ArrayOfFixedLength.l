;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::ArrayOfFixedLength)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'ArrayOfFixedLength (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::ARRAYOFFIXEDLENGTH")
  (make-package "TEST_ROSCPP::ARRAYOFFIXEDLENGTH"))

(in-package "ROS")
;;//! \htmlinclude ArrayOfFixedLength.msg.html


(defclass test_roscpp::ArrayOfFixedLength
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::ArrayOfFixedLength
  (:init
   (&key
    ((:a __a) (let (r) (dotimes (i 4) (push (instance test_roscpp::FixedLength :init) r)) r))
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
    ;; test_roscpp/FixedLength[4] _a
    (apply #'+ (send-all _a :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roscpp/FixedLength[4] _a
     (dolist (elem _a)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roscpp/FixedLength[4] _a
   (dotimes (i 4)
     (send (elt _a i) :deserialize buf ptr-) (incf ptr- (send (elt _a i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get test_roscpp::ArrayOfFixedLength :md5sum-) "770e15962592d1fbea70b6b820ba16d9")
(setf (get test_roscpp::ArrayOfFixedLength :datatype-) "test_roscpp/ArrayOfFixedLength")
(setf (get test_roscpp::ArrayOfFixedLength :definition-)
      "# This comment has \"quotes\" in it
FixedLength[4] a
================================================================================
MSG: test_roscpp/FixedLength
uint32 a
float32 b

")



(provide :test_roscpp/ArrayOfFixedLength "770e15962592d1fbea70b6b820ba16d9")


