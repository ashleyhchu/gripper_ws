;; Auto-generated. Do not edit!


(when (boundp 'test_rostopic::Floats)
  (if (not (find-package "TEST_ROSTOPIC"))
    (make-package "TEST_ROSTOPIC"))
  (shadow 'Floats (find-package "TEST_ROSTOPIC")))
(unless (find-package "TEST_ROSTOPIC::FLOATS")
  (make-package "TEST_ROSTOPIC::FLOATS"))

(in-package "ROS")
;;//! \htmlinclude Floats.msg.html


(defclass test_rostopic::Floats
  :super ros::object
  :slots (_float32 _float64 ))

(defmethod test_rostopic::Floats
  (:init
   (&key
    ((:float32 __float32) 0.0)
    ((:float64 __float64) 0.0)
    )
   (send-super :init)
   (setq _float32 (float __float32))
   (setq _float64 (float __float64))
   self)
  (:float32
   (&optional __float32)
   (if __float32 (setq _float32 __float32)) _float32)
  (:float64
   (&optional __float64)
   (if __float64 (setq _float64 __float64)) _float64)
  (:serialization-length
   ()
   (+
    ;; float32 _float32
    4
    ;; float64 _float64
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _float32
       (sys::poke _float32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _float64
       (sys::poke _float64 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _float32
     (setq _float32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _float64
     (setq _float64 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get test_rostopic::Floats :md5sum-) "1ee8aba2d870f75f2b5916e2cddbd928")
(setf (get test_rostopic::Floats :datatype-) "test_rostopic/Floats")
(setf (get test_rostopic::Floats :definition-)
      "# for rostopic tests
float32 float32
float64 float64

")



(provide :test_rostopic/Floats "1ee8aba2d870f75f2b5916e2cddbd928")


