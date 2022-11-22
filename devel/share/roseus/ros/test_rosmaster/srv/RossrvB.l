;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::RossrvB)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'RossrvB (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::ROSSRVB")
  (make-package "TEST_ROSMASTER::ROSSRVB"))
(unless (find-package "TEST_ROSMASTER::ROSSRVBREQUEST")
  (make-package "TEST_ROSMASTER::ROSSRVBREQUEST"))
(unless (find-package "TEST_ROSMASTER::ROSSRVBRESPONSE")
  (make-package "TEST_ROSMASTER::ROSSRVBRESPONSE"))

(in-package "ROS")





(defclass test_rosmaster::RossrvBRequest
  :super ros::object
  :slots (_empty ))

(defmethod test_rosmaster::RossrvBRequest
  (:init
   (&key
    ((:empty __empty) (instance test_rosmaster::Empty :init))
    )
   (send-super :init)
   (setq _empty __empty)
   self)
  (:empty
   (&rest __empty)
   (if (keywordp (car __empty))
       (send* _empty __empty)
     (progn
       (if __empty (setq _empty (car __empty)))
       _empty)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/Empty _empty
    (send _empty :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/Empty _empty
       (send _empty :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/Empty _empty
     (send _empty :deserialize buf ptr-) (incf ptr- (send _empty :serialization-length))
   ;;
   self)
  )

(defclass test_rosmaster::RossrvBResponse
  :super ros::object
  :slots (_empty ))

(defmethod test_rosmaster::RossrvBResponse
  (:init
   (&key
    ((:empty __empty) (instance test_rosmaster::Empty :init))
    )
   (send-super :init)
   (setq _empty __empty)
   self)
  (:empty
   (&rest __empty)
   (if (keywordp (car __empty))
       (send* _empty __empty)
     (progn
       (if __empty (setq _empty (car __empty)))
       _empty)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/Empty _empty
    (send _empty :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/Empty _empty
       (send _empty :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/Empty _empty
     (send _empty :deserialize buf ptr-) (incf ptr- (send _empty :serialization-length))
   ;;
   self)
  )

(defclass test_rosmaster::RossrvB
  :super ros::object
  :slots ())

(setf (get test_rosmaster::RossrvB :md5sum-) "928fb104d412cd4f5983340b98df1876")
(setf (get test_rosmaster::RossrvB :datatype-) "test_rosmaster/RossrvB")
(setf (get test_rosmaster::RossrvB :request) test_rosmaster::RossrvBRequest)
(setf (get test_rosmaster::RossrvB :response) test_rosmaster::RossrvBResponse)

(defmethod test_rosmaster::RossrvBRequest
  (:response () (instance test_rosmaster::RossrvBResponse :init)))

(setf (get test_rosmaster::RossrvBRequest :md5sum-) "928fb104d412cd4f5983340b98df1876")
(setf (get test_rosmaster::RossrvBRequest :datatype-) "test_rosmaster/RossrvBRequest")
(setf (get test_rosmaster::RossrvBRequest :definition-)
      "Empty empty

================================================================================
MSG: test_rosmaster/Empty
---
Empty empty


================================================================================
MSG: test_rosmaster/Empty
")

(setf (get test_rosmaster::RossrvBResponse :md5sum-) "928fb104d412cd4f5983340b98df1876")
(setf (get test_rosmaster::RossrvBResponse :datatype-) "test_rosmaster/RossrvBResponse")
(setf (get test_rosmaster::RossrvBResponse :definition-)
      "Empty empty

================================================================================
MSG: test_rosmaster/Empty
---
Empty empty


================================================================================
MSG: test_rosmaster/Empty
")



(provide :test_rosmaster/RossrvB "928fb104d412cd4f5983340b98df1876")


