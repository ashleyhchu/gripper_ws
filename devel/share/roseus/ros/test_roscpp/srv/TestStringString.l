;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::TestStringString)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'TestStringString (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::TESTSTRINGSTRING")
  (make-package "TEST_ROSCPP::TESTSTRINGSTRING"))
(unless (find-package "TEST_ROSCPP::TESTSTRINGSTRINGREQUEST")
  (make-package "TEST_ROSCPP::TESTSTRINGSTRINGREQUEST"))
(unless (find-package "TEST_ROSCPP::TESTSTRINGSTRINGRESPONSE")
  (make-package "TEST_ROSCPP::TESTSTRINGSTRINGRESPONSE"))

(in-package "ROS")





(defclass test_roscpp::TestStringStringRequest
  :super ros::object
  :slots (_str ))

(defmethod test_roscpp::TestStringStringRequest
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_roscpp::TestStringStringResponse
  :super ros::object
  :slots (_str ))

(defmethod test_roscpp::TestStringStringResponse
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_roscpp::TestStringString
  :super ros::object
  :slots ())

(setf (get test_roscpp::TestStringString :md5sum-) "671f8e4998eaec79f1c47e339dfd527b")
(setf (get test_roscpp::TestStringString :datatype-) "test_roscpp/TestStringString")
(setf (get test_roscpp::TestStringString :request) test_roscpp::TestStringStringRequest)
(setf (get test_roscpp::TestStringString :response) test_roscpp::TestStringStringResponse)

(defmethod test_roscpp::TestStringStringRequest
  (:response () (instance test_roscpp::TestStringStringResponse :init)))

(setf (get test_roscpp::TestStringStringRequest :md5sum-) "671f8e4998eaec79f1c47e339dfd527b")
(setf (get test_roscpp::TestStringStringRequest :datatype-) "test_roscpp/TestStringStringRequest")
(setf (get test_roscpp::TestStringStringRequest :definition-)
      "string str
---
string str

")

(setf (get test_roscpp::TestStringStringResponse :md5sum-) "671f8e4998eaec79f1c47e339dfd527b")
(setf (get test_roscpp::TestStringStringResponse :datatype-) "test_roscpp/TestStringStringResponse")
(setf (get test_roscpp::TestStringStringResponse :definition-)
      "string str
---
string str

")



(provide :test_roscpp/TestStringString "671f8e4998eaec79f1c47e339dfd527b")


