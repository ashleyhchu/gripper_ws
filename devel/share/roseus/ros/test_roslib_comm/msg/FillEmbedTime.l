;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::FillEmbedTime)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'FillEmbedTime (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::FILLEMBEDTIME")
  (make-package "TEST_ROSLIB_COMM::FILLEMBEDTIME"))

(in-package "ROS")
;;//! \htmlinclude FillEmbedTime.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roslib_comm::FillEmbedTime
  :super ros::object
  :slots (_t _d _str_msg _str_msg_array _i32 ))

(defmethod test_roslib_comm::FillEmbedTime
  (:init
   (&key
    ((:t __t) (instance ros::time :init))
    ((:d __d) (instance ros::time :init))
    ((:str_msg __str_msg) (instance std_msgs::String :init))
    ((:str_msg_array __str_msg_array) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:i32 __i32) 0)
    )
   (send-super :init)
   (setq _t __t)
   (setq _d __d)
   (setq _str_msg __str_msg)
   (setq _str_msg_array __str_msg_array)
   (setq _i32 (round __i32))
   self)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:str_msg
   (&rest __str_msg)
   (if (keywordp (car __str_msg))
       (send* _str_msg __str_msg)
     (progn
       (if __str_msg (setq _str_msg (car __str_msg)))
       _str_msg)))
  (:str_msg_array
   (&rest __str_msg_array)
   (if (keywordp (car __str_msg_array))
       (send* _str_msg_array __str_msg_array)
     (progn
       (if __str_msg_array (setq _str_msg_array (car __str_msg_array)))
       _str_msg_array)))
  (:i32
   (&optional __i32)
   (if __i32 (setq _i32 __i32)) _i32)
  (:serialization-length
   ()
   (+
    ;; time _t
    8
    ;; duration _d
    8
    ;; std_msgs/String _str_msg
    (send _str_msg :serialization-length)
    ;; std_msgs/String[] _str_msg_array
    (apply #'+ (send-all _str_msg_array :serialization-length)) 4
    ;; int32 _i32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;; duration _d
       (write-long (send _d :sec) s) (write-long (send _d :nsec) s)
     ;; std_msgs/String _str_msg
       (send _str_msg :serialize s)
     ;; std_msgs/String[] _str_msg_array
     (write-long (length _str_msg_array) s)
     (dolist (elem _str_msg_array)
       (send elem :serialize s)
       )
     ;; int32 _i32
       (write-long _i32 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _d
     (send _d :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _d :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _str_msg
     (send _str_msg :deserialize buf ptr-) (incf ptr- (send _str_msg :serialization-length))
   ;; std_msgs/String[] _str_msg_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _str_msg_array (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _str_msg_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _i32
     (setq _i32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roslib_comm::FillEmbedTime :md5sum-) "90e08039be001a899b8c20e680c289b0")
(setf (get test_roslib_comm::FillEmbedTime :datatype-) "test_roslib_comm/FillEmbedTime")
(setf (get test_roslib_comm::FillEmbedTime :definition-)
      "time t
duration d
std_msgs/String str_msg
std_msgs/String[] str_msg_array
int32 i32
================================================================================
MSG: std_msgs/String
string data

")



(provide :test_roslib_comm/FillEmbedTime "90e08039be001a899b8c20e680c289b0")


