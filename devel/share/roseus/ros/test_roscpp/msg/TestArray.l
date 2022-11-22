;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::TestArray)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'TestArray (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::TESTARRAY")
  (make-package "TEST_ROSCPP::TESTARRAY"))

(in-package "ROS")
;;//! \htmlinclude TestArray.msg.html


(defclass test_roscpp::TestArray
  :super ros::object
  :slots (_counter _float_arr ))

(defmethod test_roscpp::TestArray
  (:init
   (&key
    ((:counter __counter) 0)
    ((:float_arr __float_arr) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _counter (round __counter))
   (setq _float_arr __float_arr)
   self)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:float_arr
   (&optional __float_arr)
   (if __float_arr (setq _float_arr __float_arr)) _float_arr)
  (:serialization-length
   ()
   (+
    ;; int32 _counter
    4
    ;; float64[] _float_arr
    (* 8    (length _float_arr)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _counter
       (write-long _counter s)
     ;; float64[] _float_arr
     (write-long (length _float_arr) s)
     (dotimes (i (length _float_arr))
       (sys::poke (elt _float_arr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _counter
     (setq _counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _float_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _float_arr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _float_arr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get test_roscpp::TestArray :md5sum-) "f7c2f87680985b118316f81f28b4cfd5")
(setf (get test_roscpp::TestArray :datatype-) "test_roscpp/TestArray")
(setf (get test_roscpp::TestArray :definition-)
      "int32 counter
float64[] float_arr

")



(provide :test_roscpp/TestArray "f7c2f87680985b118316f81f28b4cfd5")


