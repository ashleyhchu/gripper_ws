;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::FillSimple)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'FillSimple (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::FILLSIMPLE")
  (make-package "TEST_ROSLIB_COMM::FILLSIMPLE"))

(in-package "ROS")
;;//! \htmlinclude FillSimple.msg.html


(defclass test_roslib_comm::FillSimple
  :super ros::object
  :slots (_i32 _str _i32_array _b ))

(defmethod test_roslib_comm::FillSimple
  (:init
   (&key
    ((:i32 __i32) 0)
    ((:str __str) "")
    ((:i32_array __i32_array) (make-array 0 :initial-element 0 :element-type :integer))
    ((:b __b) nil)
    )
   (send-super :init)
   (setq _i32 (round __i32))
   (setq _str (string __str))
   (setq _i32_array __i32_array)
   (setq _b __b)
   self)
  (:i32
   (&optional __i32)
   (if __i32 (setq _i32 __i32)) _i32)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:i32_array
   (&optional __i32_array)
   (if __i32_array (setq _i32_array __i32_array)) _i32_array)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _i32
    4
    ;; string _str
    4 (length _str)
    ;; int32[] _i32_array
    (* 4    (length _i32_array)) 4
    ;; bool _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _i32
       (write-long _i32 s)
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;; int32[] _i32_array
     (write-long (length _i32_array) s)
     (dotimes (i (length _i32_array))
       (write-long (elt _i32_array i) s)
       )
     ;; bool _b
       (if _b (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _i32
     (setq _i32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _i32_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _i32_array (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _i32_array i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool _b
     (setq _b (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get test_roslib_comm::FillSimple :md5sum-) "da04a60d03fa22f7d301f9bd5f9a08ab")
(setf (get test_roslib_comm::FillSimple :datatype-) "test_roslib_comm/FillSimple")
(setf (get test_roslib_comm::FillSimple :definition-)
      "int32 i32
string str
int32[] i32_array
bool b
")



(provide :test_roslib_comm/FillSimple "da04a60d03fa22f7d301f9bd5f9a08ab")


