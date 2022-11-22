;; Auto-generated. Do not edit!


(when (boundp 'test_rostopic::Embed)
  (if (not (find-package "TEST_ROSTOPIC"))
    (make-package "TEST_ROSTOPIC"))
  (shadow 'Embed (find-package "TEST_ROSTOPIC")))
(unless (find-package "TEST_ROSTOPIC::EMBED")
  (make-package "TEST_ROSTOPIC::EMBED"))

(in-package "ROS")
;;//! \htmlinclude Embed.msg.html


(defclass test_rostopic::Embed
  :super ros::object
  :slots (_simple _arrays ))

(defmethod test_rostopic::Embed
  (:init
   (&key
    ((:simple __simple) (instance test_rostopic::Simple :init))
    ((:arrays __arrays) (instance test_rostopic::Arrays :init))
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
    ;; test_rostopic/Simple _simple
    (send _simple :serialization-length)
    ;; test_rostopic/Arrays _arrays
    (send _arrays :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_rostopic/Simple _simple
       (send _simple :serialize s)
     ;; test_rostopic/Arrays _arrays
       (send _arrays :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_rostopic/Simple _simple
     (send _simple :deserialize buf ptr-) (incf ptr- (send _simple :serialization-length))
   ;; test_rostopic/Arrays _arrays
     (send _arrays :deserialize buf ptr-) (incf ptr- (send _arrays :serialization-length))
   ;;
   self)
  )

(setf (get test_rostopic::Embed :md5sum-) "6dec891298f3675c2d964c161d28efaa")
(setf (get test_rostopic::Embed :datatype-) "test_rostopic/Embed")
(setf (get test_rostopic::Embed :definition-)
      "#for rostopic tests
Simple simple
Arrays arrays

================================================================================
MSG: test_rostopic/Simple
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
MSG: test_rostopic/Arrays
#for rostopic tests
int8[] int8_arr
uint8[] uint8_arr
int32[] int32_arr
uint32[] uint32_arr
string[] string_arr
time[] time_arr

")



(provide :test_rostopic/Embed "6dec891298f3675c2d964c161d28efaa")


