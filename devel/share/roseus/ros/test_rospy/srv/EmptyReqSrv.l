;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::EmptyReqSrv)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'EmptyReqSrv (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::EMPTYREQSRV")
  (make-package "TEST_ROSPY::EMPTYREQSRV"))
(unless (find-package "TEST_ROSPY::EMPTYREQSRVREQUEST")
  (make-package "TEST_ROSPY::EMPTYREQSRVREQUEST"))
(unless (find-package "TEST_ROSPY::EMPTYREQSRVRESPONSE")
  (make-package "TEST_ROSPY::EMPTYREQSRVRESPONSE"))

(in-package "ROS")





(defclass test_rospy::EmptyReqSrvRequest
  :super ros::object
  :slots ())

(defmethod test_rospy::EmptyReqSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass test_rospy::EmptyReqSrvResponse
  :super ros::object
  :slots (_fake_secret ))

(defmethod test_rospy::EmptyReqSrvResponse
  (:init
   (&key
    ((:fake_secret __fake_secret) 0)
    )
   (send-super :init)
   (setq _fake_secret (round __fake_secret))
   self)
  (:fake_secret
   (&optional __fake_secret)
   (if __fake_secret (setq _fake_secret __fake_secret)) _fake_secret)
  (:serialization-length
   ()
   (+
    ;; int32 _fake_secret
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fake_secret
       (write-long _fake_secret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fake_secret
     (setq _fake_secret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rospy::EmptyReqSrv
  :super ros::object
  :slots ())

(setf (get test_rospy::EmptyReqSrv :md5sum-) "1280578cbe4073963a4321b9248d566e")
(setf (get test_rospy::EmptyReqSrv :datatype-) "test_rospy/EmptyReqSrv")
(setf (get test_rospy::EmptyReqSrv :request) test_rospy::EmptyReqSrvRequest)
(setf (get test_rospy::EmptyReqSrv :response) test_rospy::EmptyReqSrvResponse)

(defmethod test_rospy::EmptyReqSrvRequest
  (:response () (instance test_rospy::EmptyReqSrvResponse :init)))

(setf (get test_rospy::EmptyReqSrvRequest :md5sum-) "1280578cbe4073963a4321b9248d566e")
(setf (get test_rospy::EmptyReqSrvRequest :datatype-) "test_rospy/EmptyReqSrvRequest")
(setf (get test_rospy::EmptyReqSrvRequest :definition-)
      "---
int32 fake_secret

")

(setf (get test_rospy::EmptyReqSrvResponse :md5sum-) "1280578cbe4073963a4321b9248d566e")
(setf (get test_rospy::EmptyReqSrvResponse :datatype-) "test_rospy/EmptyReqSrvResponse")
(setf (get test_rospy::EmptyReqSrvResponse :definition-)
      "---
int32 fake_secret

")



(provide :test_rospy/EmptyReqSrv "1280578cbe4073963a4321b9248d566e")


