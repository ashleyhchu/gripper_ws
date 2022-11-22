;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::Floats)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'Floats (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::FLOATS")
  (make-package "TEST_ROSPY::FLOATS"))

(in-package "ROS")
;;//! \htmlinclude Floats.msg.html


(defclass test_rospy::Floats
  :super ros::object
  :slots (_data ))

(defmethod test_rospy::Floats
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get test_rospy::Floats :md5sum-) "420cd38b6b071cd49f2970c3e2cee511")
(setf (get test_rospy::Floats :datatype-) "test_rospy/Floats")
(setf (get test_rospy::Floats :definition-)
      "# exact copy of rospy_tutorials/Floats, used for testing
float32[] data

")



(provide :test_rospy/Floats "420cd38b6b071cd49f2970c3e2cee511")


