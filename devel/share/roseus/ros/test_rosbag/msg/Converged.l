;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::Converged)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'Converged (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::CONVERGED")
  (make-package "TEST_ROSBAG::CONVERGED"))

(in-package "ROS")
;;//! \htmlinclude Converged.msg.html


(defclass test_rosbag::Converged
  :super ros::object
  :slots (_field1 _field2 ))

(defmethod test_rosbag::Converged
  (:init
   (&key
    ((:field1 __field1) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:field2 __field2) (let (r) (dotimes (i 4) (push (instance test_rosbag::SimpleMigrated :init) r)) r))
    )
   (send-super :init)
   (setq _field1 __field1)
   (setq _field2 __field2)
   self)
  (:field1
   (&optional __field1)
   (if __field1 (setq _field1 __field1)) _field1)
  (:field2
   (&rest __field2)
   (if (keywordp (car __field2))
       (send* _field2 __field2)
     (progn
       (if __field2 (setq _field2 (car __field2)))
       _field2)))
  (:serialization-length
   ()
   (+
    ;; float32[4] _field1
    (* 4    4)
    ;; test_rosbag/SimpleMigrated[4] _field2
    (apply #'+ (send-all _field2 :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _field1
     (dotimes (i 4)
       (sys::poke (elt _field1 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; test_rosbag/SimpleMigrated[4] _field2
     (dolist (elem _field2)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _field1
   (dotimes (i (length _field1))
     (setf (elt _field1 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; test_rosbag/SimpleMigrated[4] _field2
   (dotimes (i 4)
     (send (elt _field2 i) :deserialize buf ptr-) (incf ptr- (send (elt _field2 i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get test_rosbag::Converged :md5sum-) "fb364bc8a2a4b0b810763576f44bc36d")
(setf (get test_rosbag::Converged :datatype-) "test_rosbag/Converged")
(setf (get test_rosbag::Converged :definition-)
      "float32[4]           field1 # [1.2, 3.4, 5.6, 7.8]
SimpleMigrated[4]    field2 # [11, 22, 33, 44]
================================================================================
MSG: test_rosbag/SimpleMigrated
int32 data # 42
")



(provide :test_rosbag/Converged "fb364bc8a2a4b0b810763576f44bc36d")


