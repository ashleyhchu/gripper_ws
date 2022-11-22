;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::TestString)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'TestString (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::TESTSTRING")
  (make-package "TEST_ROSMASTER::TESTSTRING"))

(in-package "ROS")
;;//! \htmlinclude TestString.msg.html


(defclass test_rosmaster::TestString
  :super ros::object
  :slots (_caller_id _orig_caller_id _data ))

(defmethod test_rosmaster::TestString
  (:init
   (&key
    ((:caller_id __caller_id) "")
    ((:orig_caller_id __orig_caller_id) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _caller_id (string __caller_id))
   (setq _orig_caller_id (string __orig_caller_id))
   (setq _data (string __data))
   self)
  (:caller_id
   (&optional __caller_id)
   (if __caller_id (setq _caller_id __caller_id)) _caller_id)
  (:orig_caller_id
   (&optional __orig_caller_id)
   (if __orig_caller_id (setq _orig_caller_id __orig_caller_id)) _orig_caller_id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _caller_id
    4 (length _caller_id)
    ;; string _orig_caller_id
    4 (length _orig_caller_id)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _caller_id
       (write-long (length _caller_id) s) (princ _caller_id s)
     ;; string _orig_caller_id
       (write-long (length _orig_caller_id) s) (princ _orig_caller_id s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _orig_caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orig_caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_rosmaster::TestString :md5sum-) "334ff4377be93faa44ebc66d23d40fd3")
(setf (get test_rosmaster::TestString :datatype-) "test_rosmaster/TestString")
(setf (get test_rosmaster::TestString :definition-)
      "# Integration test message
# caller_id of most recent node to send this message
string caller_id
# caller_id of the original node to send this message
string orig_caller_id
string data

")



(provide :test_rosmaster/TestString "334ff4377be93faa44ebc66d23d40fd3")


