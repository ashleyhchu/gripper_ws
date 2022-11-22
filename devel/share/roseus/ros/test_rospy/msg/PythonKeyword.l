;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::PythonKeyword)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'PythonKeyword (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::PYTHONKEYWORD")
  (make-package "TEST_ROSPY::PYTHONKEYWORD"))

(in-package "ROS")
;;//! \htmlinclude PythonKeyword.msg.html


(defclass test_rospy::PythonKeyword
  :super ros::object
  :slots (_yield ))

(defmethod test_rospy::PythonKeyword
  (:init
   (&key
    ((:yield __yield) 0)
    )
   (send-super :init)
   (setq _yield (round __yield))
   self)
  (:yield
   (&optional __yield)
   (if __yield (setq _yield __yield)) _yield)
  (:serialization-length
   ()
   (+
    ;; int32 _yield
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _yield
       (write-long _yield s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _yield
     (setq _yield (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rospy::PythonKeyword :md5sum-) "1330d6bbfad8e75334346fec949d5133")
(setf (get test_rospy::PythonKeyword :datatype-) "test_rospy/PythonKeyword")
(setf (get test_rospy::PythonKeyword :definition-)
      "int32 yield

")



(provide :test_rospy/PythonKeyword "1330d6bbfad8e75334346fec949d5133")


