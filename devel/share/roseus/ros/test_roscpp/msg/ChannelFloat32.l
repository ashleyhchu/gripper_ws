;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::ChannelFloat32)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'ChannelFloat32 (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::CHANNELFLOAT32")
  (make-package "TEST_ROSCPP::CHANNELFLOAT32"))

(in-package "ROS")
;;//! \htmlinclude ChannelFloat32.msg.html


(defclass test_roscpp::ChannelFloat32
  :super ros::object
  :slots (_name _vals ))

(defmethod test_roscpp::ChannelFloat32
  (:init
   (&key
    ((:name __name) "")
    ((:vals __vals) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _vals __vals)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:vals
   (&optional __vals)
   (if __vals (setq _vals __vals)) _vals)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32[] _vals
    (* 4    (length _vals)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _vals
     (write-long (length _vals) s)
     (dotimes (i (length _vals))
       (sys::poke (elt _vals i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _vals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vals (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vals i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get test_roscpp::ChannelFloat32 :md5sum-) "61c47e4621e471c885edb248b5dcafd5")
(setf (get test_roscpp::ChannelFloat32 :datatype-) "test_roscpp/ChannelFloat32")
(setf (get test_roscpp::ChannelFloat32 :definition-)
      "string name
float32[] vals
")



(provide :test_roscpp/ChannelFloat32 "61c47e4621e471c885edb248b5dcafd5")


