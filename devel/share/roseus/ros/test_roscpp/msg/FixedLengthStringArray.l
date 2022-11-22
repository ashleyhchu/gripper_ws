;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::FixedLengthStringArray)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'FixedLengthStringArray (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::FIXEDLENGTHSTRINGARRAY")
  (make-package "TEST_ROSCPP::FIXEDLENGTHSTRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude FixedLengthStringArray.msg.html


(defclass test_roscpp::FixedLengthStringArray
  :super ros::object
  :slots (_foo ))

(defmethod test_roscpp::FixedLengthStringArray
  (:init
   (&key
    ((:foo __foo) (let (r) (dotimes (i 5) (push "" r)) r))
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
    ;; string[5] _foo
    (apply #'+ 4 (length _foo)    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[5] _foo
     (write-long (length _foo) s)
     (dolist (elem _foo)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[5] _foo
   (dotimes (i (length _foo))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _foo i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;;
   self)
  )

(setf (get test_roscpp::FixedLengthStringArray :md5sum-) "8e291ac046196a95bbe34c1555b382cc")
(setf (get test_roscpp::FixedLengthStringArray :datatype-) "test_roscpp/FixedLengthStringArray")
(setf (get test_roscpp::FixedLengthStringArray :definition-)
      "string[5] foo

")



(provide :test_roscpp/FixedLengthStringArray "8e291ac046196a95bbe34c1555b382cc")


