;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::BadTestStringString)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'BadTestStringString (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::BADTESTSTRINGSTRING")
  (make-package "TEST_ROSCPP::BADTESTSTRINGSTRING"))
(unless (find-package "TEST_ROSCPP::BADTESTSTRINGSTRINGREQUEST")
  (make-package "TEST_ROSCPP::BADTESTSTRINGSTRINGREQUEST"))
(unless (find-package "TEST_ROSCPP::BADTESTSTRINGSTRINGRESPONSE")
  (make-package "TEST_ROSCPP::BADTESTSTRINGSTRINGRESPONSE"))

(in-package "ROS")





(defclass test_roscpp::BadTestStringStringRequest
  :super ros::object
  :slots (_strbad ))

(defmethod test_roscpp::BadTestStringStringRequest
  (:init
   (&key
    ((:strbad __strbad) "")
    )
   (send-super :init)
   (setq _strbad (string __strbad))
   self)
  (:strbad
   (&optional __strbad)
   (if __strbad (setq _strbad __strbad)) _strbad)
  (:serialization-length
   ()
   (+
    ;; string _strbad
    4 (length _strbad)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _strbad
       (write-long (length _strbad) s) (princ _strbad s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _strbad
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strbad (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_roscpp::BadTestStringStringResponse
  :super ros::object
  :slots (_str ))

(defmethod test_roscpp::BadTestStringStringResponse
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

(defclass test_roscpp::BadTestStringString
  :super ros::object
  :slots ())

(setf (get test_roscpp::BadTestStringString :md5sum-) "6b193467bc2d41be616d6b0e985e2a63")
(setf (get test_roscpp::BadTestStringString :datatype-) "test_roscpp/BadTestStringString")
(setf (get test_roscpp::BadTestStringString :request) test_roscpp::BadTestStringStringRequest)
(setf (get test_roscpp::BadTestStringString :response) test_roscpp::BadTestStringStringResponse)

(defmethod test_roscpp::BadTestStringStringRequest
  (:response () (instance test_roscpp::BadTestStringStringResponse :init)))

(setf (get test_roscpp::BadTestStringStringRequest :md5sum-) "6b193467bc2d41be616d6b0e985e2a63")
(setf (get test_roscpp::BadTestStringStringRequest :datatype-) "test_roscpp/BadTestStringStringRequest")
(setf (get test_roscpp::BadTestStringStringRequest :definition-)
      "# field name is different, so md5 sum should be different
string strbad
---
string str

")

(setf (get test_roscpp::BadTestStringStringResponse :md5sum-) "6b193467bc2d41be616d6b0e985e2a63")
(setf (get test_roscpp::BadTestStringStringResponse :datatype-) "test_roscpp/BadTestStringStringResponse")
(setf (get test_roscpp::BadTestStringStringResponse :definition-)
      "# field name is different, so md5 sum should be different
string strbad
---
string str

")



(provide :test_roscpp/BadTestStringString "6b193467bc2d41be616d6b0e985e2a63")


