;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::RossrvA)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'RossrvA (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::ROSSRVA")
  (make-package "TEST_ROSMASTER::ROSSRVA"))
(unless (find-package "TEST_ROSMASTER::ROSSRVAREQUEST")
  (make-package "TEST_ROSMASTER::ROSSRVAREQUEST"))
(unless (find-package "TEST_ROSMASTER::ROSSRVARESPONSE")
  (make-package "TEST_ROSMASTER::ROSSRVARESPONSE"))

(in-package "ROS")





(defclass test_rosmaster::RossrvARequest
  :super ros::object
  :slots (_areq ))

(defmethod test_rosmaster::RossrvARequest
  (:init
   (&key
    ((:areq __areq) 0)
    )
   (send-super :init)
   (setq _areq (round __areq))
   self)
  (:areq
   (&optional __areq)
   (if __areq (setq _areq __areq)) _areq)
  (:serialization-length
   ()
   (+
    ;; int32 _areq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _areq
       (write-long _areq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _areq
     (setq _areq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rosmaster::RossrvAResponse
  :super ros::object
  :slots (_aresp ))

(defmethod test_rosmaster::RossrvAResponse
  (:init
   (&key
    ((:aresp __aresp) 0)
    )
   (send-super :init)
   (setq _aresp (round __aresp))
   self)
  (:aresp
   (&optional __aresp)
   (if __aresp (setq _aresp __aresp)) _aresp)
  (:serialization-length
   ()
   (+
    ;; int32 _aresp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _aresp
       (write-long _aresp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _aresp
     (setq _aresp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rosmaster::RossrvA
  :super ros::object
  :slots ())

(setf (get test_rosmaster::RossrvA :md5sum-) "76c968b761b29d4bcc0a15cf4316a1e7")
(setf (get test_rosmaster::RossrvA :datatype-) "test_rosmaster/RossrvA")
(setf (get test_rosmaster::RossrvA :request) test_rosmaster::RossrvARequest)
(setf (get test_rosmaster::RossrvA :response) test_rosmaster::RossrvAResponse)

(defmethod test_rosmaster::RossrvARequest
  (:response () (instance test_rosmaster::RossrvAResponse :init)))

(setf (get test_rosmaster::RossrvARequest :md5sum-) "76c968b761b29d4bcc0a15cf4316a1e7")
(setf (get test_rosmaster::RossrvARequest :datatype-) "test_rosmaster/RossrvARequest")
(setf (get test_rosmaster::RossrvARequest :definition-)
      "int32 areq
---
int32 aresp

")

(setf (get test_rosmaster::RossrvAResponse :md5sum-) "76c968b761b29d4bcc0a15cf4316a1e7")
(setf (get test_rosmaster::RossrvAResponse :datatype-) "test_rosmaster/RossrvAResponse")
(setf (get test_rosmaster::RossrvAResponse :definition-)
      "int32 areq
---
int32 aresp

")



(provide :test_rosmaster/RossrvA "76c968b761b29d4bcc0a15cf4316a1e7")


