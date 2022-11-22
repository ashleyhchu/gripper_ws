;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::FixedLength)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'FixedLength (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::FIXEDLENGTH")
  (make-package "TEST_ROSCPP::FIXEDLENGTH"))

(in-package "ROS")
;;//! \htmlinclude FixedLength.msg.html


(defclass test_roscpp::FixedLength
  :super ros::object
  :slots (_a _b ))

(defmethod test_roscpp::FixedLength
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; uint32 _a
    4
    ;; float32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _a
       (write-long _a s)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::FixedLength :md5sum-) "74143e1090cf694294f589605908b555")
(setf (get test_roscpp::FixedLength :datatype-) "test_roscpp/FixedLength")
(setf (get test_roscpp::FixedLength :definition-)
      "uint32 a
float32 b

")



(provide :test_roscpp/FixedLength "74143e1090cf694294f589605908b555")


