;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::Embed)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'Embed (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::EMBED")
  (make-package "TEST_ROSMASTER::EMBED"))

(in-package "ROS")
;;//! \htmlinclude Embed.msg.html


(defclass test_rosmaster::Embed
  :super ros::object
  :slots (_simple _arrays ))

(defmethod test_rosmaster::Embed
  (:init
   (&key
    ((:simple __simple) (instance test_rosmaster::Simple :init))
    ((:arrays __arrays) (instance test_rosmaster::Arrays :init))
    )
   (send-super :init)
   (setq _simple __simple)
   (setq _arrays __arrays)
   self)
  (:simple
   (&rest __simple)
   (if (keywordp (car __simple))
       (send* _simple __simple)
     (progn
       (if __simple (setq _simple (car __simple)))
       _simple)))
  (:arrays
   (&rest __arrays)
   (if (keywordp (car __arrays))
       (send* _arrays __arrays)
     (progn
       (if __arrays (setq _arrays (car __arrays)))
       _arrays)))
  (:serialization-length
   ()
   (+
    ;; test_rosmaster/Simple _simple
    (send _simple :serialization-length)
    ;; test_rosmaster/Arrays _arrays
    (send _arrays :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rosmaster/Simple _simple
       (send _simple :serialize s)
     ;; test_rosmaster/Arrays _arrays
       (send _arrays :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rosmaster/Simple _simple
     (send _simple :deserialize buf ptr-) (incf ptr- (send _simple :serialization-length))
   ;; test_rosmaster/Arrays _arrays
     (send _arrays :deserialize buf ptr-) (incf ptr- (send _arrays :serialization-length))
   ;;
   self)
  )

(setf (get test_rosmaster::Embed :md5sum-) "6dec891298f3675c2d964c161d28efaa")
(setf (get test_rosmaster::Embed :datatype-) "test_rosmaster/Embed")
(setf (get test_rosmaster::Embed :definition-)
      "#for rostopic tests
Simple simple
Arrays arrays

================================================================================
MSG: test_rosmaster/Simple
# for rostopic tests
byte b
int16 int16
int32 int32
int64 int64
char c
uint16 uint16
uint32 uint32
uint64 uint64
string str

================================================================================
MSG: test_rosmaster/Arrays
#for rostopic tests
int8[] int8_arr
uint8[] uint8_arr
int32[] int32_arr
uint32[] uint32_arr
string[] string_arr
time[] time_arr

")



(provide :test_rosmaster/Embed "6dec891298f3675c2d964c161d28efaa")


