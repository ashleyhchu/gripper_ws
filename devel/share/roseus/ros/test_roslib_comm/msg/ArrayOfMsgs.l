;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::ArrayOfMsgs)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'ArrayOfMsgs (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::ARRAYOFMSGS")
  (make-package "TEST_ROSLIB_COMM::ARRAYOFMSGS"))

(in-package "ROS")
;;//! \htmlinclude ArrayOfMsgs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roslib_comm::ArrayOfMsgs
  :super ros::object
  :slots (_strings _times _muls ))

(defmethod test_roslib_comm::ArrayOfMsgs
  (:init
   (&key
    ((:strings __strings) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:times __times) (let (r) (dotimes (i 0) (push (instance std_msgs::Time :init) r)) r))
    ((:muls __muls) (let (r) (dotimes (i 0) (push (instance std_msgs::MultiArrayLayout :init) r)) r))
    )
   (send-super :init)
   (setq _strings __strings)
   (setq _times __times)
   (setq _muls __muls)
   self)
  (:strings
   (&rest __strings)
   (if (keywordp (car __strings))
       (send* _strings __strings)
     (progn
       (if __strings (setq _strings (car __strings)))
       _strings)))
  (:times
   (&rest __times)
   (if (keywordp (car __times))
       (send* _times __times)
     (progn
       (if __times (setq _times (car __times)))
       _times)))
  (:muls
   (&rest __muls)
   (if (keywordp (car __muls))
       (send* _muls __muls)
     (progn
       (if __muls (setq _muls (car __muls)))
       _muls)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String[] _strings
    (apply #'+ (send-all _strings :serialization-length)) 4
    ;; std_msgs/Time[] _times
    (apply #'+ (send-all _times :serialization-length)) 4
    ;; std_msgs/MultiArrayLayout[] _muls
    (apply #'+ (send-all _muls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (send elem :serialize s)
       )
     ;; std_msgs/Time[] _times
     (write-long (length _times) s)
     (dolist (elem _times)
       (send elem :serialize s)
       )
     ;; std_msgs/MultiArrayLayout[] _muls
     (write-long (length _muls) s)
     (dolist (elem _muls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _strings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Time[] _times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _times (let (r) (dotimes (i n) (push (instance std_msgs::Time :init) r)) r))
     (dolist (elem- _times)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/MultiArrayLayout[] _muls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _muls (let (r) (dotimes (i n) (push (instance std_msgs::MultiArrayLayout :init) r)) r))
     (dolist (elem- _muls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_roslib_comm::ArrayOfMsgs :md5sum-) "1f4cf3ffabe2555a0cfe19c974f01a01")
(setf (get test_roslib_comm::ArrayOfMsgs :datatype-) "test_roslib_comm/ArrayOfMsgs")
(setf (get test_roslib_comm::ArrayOfMsgs :definition-)
      "std_msgs/String[] strings
std_msgs/Time[] times
std_msgs/MultiArrayLayout[] muls
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Time
time data

================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :test_roslib_comm/ArrayOfMsgs "1f4cf3ffabe2555a0cfe19c974f01a01")


