;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::VariableLengthStringArray)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'VariableLengthStringArray (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::VARIABLELENGTHSTRINGARRAY")
  (make-package "TEST_ROSCPP::VARIABLELENGTHSTRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude VariableLengthStringArray.msg.html


(defclass test_roscpp::VariableLengthStringArray
  :super ros::object
  :slots (_foo ))

(defmethod test_roscpp::VariableLengthStringArray
  (:init
   (&key
    ((:foo __foo) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _foo __foo)
   self)
  (:foo
   (&optional __foo)
   (if __foo (setq _foo __foo)) _foo)
  (:serialization-length
   ()
   (+
    ;; string[] _foo
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _foo)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _foo
     (write-long (length _foo) s)
     (dolist (elem _foo)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _foo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _foo (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _foo i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get test_roscpp::VariableLengthStringArray :md5sum-) "fa992b5cca963995275d2a2f3ee7615f")
(setf (get test_roscpp::VariableLengthStringArray :datatype-) "test_roscpp/VariableLengthStringArray")
(setf (get test_roscpp::VariableLengthStringArray :definition-)
      "string[] foo

")



(provide :test_roscpp/VariableLengthStringArray "fa992b5cca963995275d2a2f3ee7615f")


