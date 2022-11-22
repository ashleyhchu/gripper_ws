;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::EmptySrv)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'EmptySrv (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::EMPTYSRV")
  (make-package "TEST_ROSPY::EMPTYSRV"))
(unless (find-package "TEST_ROSPY::EMPTYSRVREQUEST")
  (make-package "TEST_ROSPY::EMPTYSRVREQUEST"))
(unless (find-package "TEST_ROSPY::EMPTYSRVRESPONSE")
  (make-package "TEST_ROSPY::EMPTYSRVRESPONSE"))

(in-package "ROS")





(defclass test_rospy::EmptySrvRequest
  :super ros::object
  :slots ())

(defmethod test_rospy::EmptySrvRequest
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

(defclass test_rospy::EmptySrvResponse
  :super ros::object
  :slots ())

(defmethod test_rospy::EmptySrvResponse
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

(defclass test_rospy::EmptySrv
  :super ros::object
  :slots ())

(setf (get test_rospy::EmptySrv :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get test_rospy::EmptySrv :datatype-) "test_rospy/EmptySrv")
(setf (get test_rospy::EmptySrv :request) test_rospy::EmptySrvRequest)
(setf (get test_rospy::EmptySrv :response) test_rospy::EmptySrvResponse)

(defmethod test_rospy::EmptySrvRequest
  (:response () (instance test_rospy::EmptySrvResponse :init)))

(setf (get test_rospy::EmptySrvRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get test_rospy::EmptySrvRequest :datatype-) "test_rospy/EmptySrvRequest")
(setf (get test_rospy::EmptySrvRequest :definition-)
      "---

")

(setf (get test_rospy::EmptySrvResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get test_rospy::EmptySrvResponse :datatype-) "test_rospy/EmptySrvResponse")
(setf (get test_rospy::EmptySrvResponse :definition-)
      "---

")



(provide :test_rospy/EmptySrv "d41d8cd98f00b204e9800998ecf8427e")


