;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::Floats)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'Floats (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::FLOATS")
  (make-package "TEST_ROSMASTER::FLOATS"))

(in-package "ROS")
;;//! \htmlinclude Floats.msg.html


(defclass test_rosmaster::Floats
  :super ros::object
  :slots (_float32 _float64 ))

(defmethod test_rosmaster::Floats
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

(setf (get test_rosmaster::Floats :md5sum-) "1ee8aba2d870f75f2b5916e2cddbd928")
(setf (get test_rosmaster::Floats :datatype-) "test_rosmaster/Floats")
(setf (get test_rosmaster::Floats :definition-)
      "# for rostopic tests
float32 float32
float64 float64

")



(provide :test_rosmaster/Floats "1ee8aba2d870f75f2b5916e2cddbd928")


