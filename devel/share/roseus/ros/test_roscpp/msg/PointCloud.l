;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::PointCloud)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'PointCloud (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::POINTCLOUD")
  (make-package "TEST_ROSCPP::POINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude PointCloud.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_roscpp::PointCloud
  :super ros::object
  :slots (_header _pts _chan ))

(defmethod test_roscpp::PointCloud
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pts __pts) (let (r) (dotimes (i 0) (push (instance test_roscpp::Point32 :init) r)) r))
    ((:chan __chan) (let (r) (dotimes (i 0) (push (instance test_roscpp::ChannelFloat32 :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pts __pts)
   (setq _chan __chan)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pts
   (&rest __pts)
   (if (keywordp (car __pts))
       (send* _pts __pts)
     (progn
       (if __pts (setq _pts (car __pts)))
       _pts)))
  (:chan
   (&rest __chan)
   (if (keywordp (car __chan))
       (send* _chan __chan)
     (progn
       (if __chan (setq _chan (car __chan)))
       _chan)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; test_roscpp/Point32[] _pts
    (apply #'+ (send-all _pts :serialization-length)) 4
    ;; test_roscpp/ChannelFloat32[] _chan
    (apply #'+ (send-all _chan :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; test_roscpp/Point32[] _pts
     (write-long (length _pts) s)
     (dolist (elem _pts)
       (send elem :serialize s)
       )
     ;; test_roscpp/ChannelFloat32[] _chan
     (write-long (length _chan) s)
     (dolist (elem _chan)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; test_roscpp/Point32[] _pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts (let (r) (dotimes (i n) (push (instance test_roscpp::Point32 :init) r)) r))
     (dolist (elem- _pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; test_roscpp/ChannelFloat32[] _chan
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _chan (let (r) (dotimes (i n) (push (instance test_roscpp::ChannelFloat32 :init) r)) r))
     (dolist (elem- _chan)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_roscpp::PointCloud :md5sum-) "c47b5cedd2b77d241b27547ed7624840")
(setf (get test_roscpp::PointCloud :datatype-) "test_roscpp/PointCloud")
(setf (get test_roscpp::PointCloud :definition-)
      "Header header
Point32[] pts
ChannelFloat32[] chan

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: test_roscpp/Point32
float32 x
float32 y
float32 z
================================================================================
MSG: test_roscpp/ChannelFloat32
string name
float32[] vals
")



(provide :test_roscpp/PointCloud "c47b5cedd2b77d241b27547ed7624840")


