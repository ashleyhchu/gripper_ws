;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::EmptyRespSrv)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'EmptyRespSrv (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::EMPTYRESPSRV")
  (make-package "TEST_ROSPY::EMPTYRESPSRV"))
(unless (find-package "TEST_ROSPY::EMPTYRESPSRVREQUEST")
  (make-package "TEST_ROSPY::EMPTYRESPSRVREQUEST"))
(unless (find-package "TEST_ROSPY::EMPTYRESPSRVRESPONSE")
  (make-package "TEST_ROSPY::EMPTYRESPSRVRESPONSE"))

(in-package "ROS")





(defclass test_rospy::EmptyRespSrvRequest
  :super ros::object
  :slots (_fake_secret ))

(defmethod test_rospy::EmptyRespSrvRequest
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

(defclass test_rospy::EmptyRespSrvResponse
  :super ros::object
  :slots ())

(defmethod test_rospy::EmptyRespSrvResponse
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

(defclass test_rospy::EmptyRespSrv
  :super ros::object
  :slots ())

(setf (get test_rospy::EmptyRespSrv :md5sum-) "1280578cbe4073963a4321b9248d566e")
(setf (get test_rospy::EmptyRespSrv :datatype-) "test_rospy/EmptyRespSrv")
(setf (get test_rospy::EmptyRespSrv :request) test_rospy::EmptyRespSrvRequest)
(setf (get test_rospy::EmptyRespSrv :response) test_rospy::EmptyRespSrvResponse)

(defmethod test_rospy::EmptyRespSrvRequest
  (:response () (instance test_rospy::EmptyRespSrvResponse :init)))

(setf (get test_rospy::EmptyRespSrvRequest :md5sum-) "1280578cbe4073963a4321b9248d566e")
(setf (get test_rospy::EmptyRespSrvRequest :datatype-) "test_rospy/EmptyRespSrvRequest")
(setf (get test_rospy::EmptyRespSrvRequest :definition-)
      "int32 fake_secret
---

")

(setf (get test_rospy::EmptyRespSrvResponse :md5sum-) "1280578cbe4073963a4321b9248d566e")
(setf (get test_rospy::EmptyRespSrvResponse :datatype-) "test_rospy/EmptyRespSrvResponse")
(setf (get test_rospy::EmptyRespSrvResponse :definition-)
      "int32 fake_secret
---

")



(provide :test_rospy/EmptyRespSrv "1280578cbe4073963a4321b9248d566e")


