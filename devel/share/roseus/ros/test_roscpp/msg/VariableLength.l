;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::VariableLength)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'VariableLength (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::VARIABLELENGTH")
  (make-package "TEST_ROSCPP::VARIABLELENGTH"))

(in-package "ROS")
;;//! \htmlinclude VariableLength.msg.html


(defclass test_roscpp::VariableLength
  :super ros::object
  :slots (_a ))

(defmethod test_roscpp::VariableLength
  (:init
   (&key
    ((:a __a) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _a __a)
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; uint32[] _a
    (* 4    (length _a)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _a
     (write-long (length _a) s)
     (dotimes (i (length _a))
       (write-long (elt _a i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _a i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get test_roscpp::VariableLength :md5sum-) "d9a532f93b9aeffe09e3bc21ff3de0f0")
(setf (get test_roscpp::VariableLength :datatype-) "test_roscpp/VariableLength")
(setf (get test_roscpp::VariableLength :definition-)
      "uint32[] a

")



(provide :test_roscpp/VariableLength "d9a532f93b9aeffe09e3bc21ff3de0f0")


