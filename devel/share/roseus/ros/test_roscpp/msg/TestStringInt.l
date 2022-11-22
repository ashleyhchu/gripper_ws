;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::TestStringInt)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'TestStringInt (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::TESTSTRINGINT")
  (make-package "TEST_ROSCPP::TESTSTRINGINT"))

(in-package "ROS")
;;//! \htmlinclude TestStringInt.msg.html


(defclass test_roscpp::TestStringInt
  :super ros::object
  :slots (_str _counter ))

(defmethod test_roscpp::TestStringInt
  (:init
   (&key
    ((:str __str) "")
    ((:counter __counter) 0)
    )
   (send-super :init)
   (setq _str (string __str))
   (setq _counter (round __counter))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ;; int32 _counter
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;; int32 _counter
       (write-long _counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _counter
     (setq _counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::TestStringInt :md5sum-) "2f0ceb8aa4bbf4dbd240039d0bf240ca")
(setf (get test_roscpp::TestStringInt :datatype-) "test_roscpp/TestStringInt")
(setf (get test_roscpp::TestStringInt :definition-)
      "string str
int32 counter

")



(provide :test_roscpp/TestStringInt "2f0ceb8aa4bbf4dbd240039d0bf240ca")


