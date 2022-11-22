;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::String)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'String (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::STRING")
  (make-package "TEST_ROSMASTER::STRING"))

(in-package "ROS")
;;//! \htmlinclude String.msg.html


(defclass test_rosmaster::String
  :super ros::object
  :slots (_data ))

(defmethod test_rosmaster::String
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_rosmaster::String :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get test_rosmaster::String :datatype-) "test_rosmaster/String")
(setf (get test_rosmaster::String :definition-)
      "# Copy of std_msgs/String.msg to avoid having tests require a dependency on std_msgs.
string data

")



(provide :test_rosmaster/String "992ce8a1687cec8c8bd883ec73ca41d1")


