;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::EmbedTest)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'EmbedTest (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::EMBEDTEST")
  (make-package "TEST_ROSPY::EMBEDTEST"))

(in-package "ROS")
;;//! \htmlinclude EmbedTest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rospy::EmbedTest
  :super ros::object
  :slots (_str1 _int1 _ints _val _vals _arrayval ))

(defmethod test_rospy::EmbedTest
  (:init
   (&key
    ((:str1 __str1) (instance std_msgs::String :init))
    ((:int1 __int1) (instance std_msgs::Int32 :init))
    ((:ints __ints) (let (r) (dotimes (i 0) (push (instance std_msgs::Int32 :init) r)) r))
    ((:val __val) (instance test_rospy::Val :init))
    ((:vals __vals) (let (r) (dotimes (i 0) (push (instance test_rospy::Val :init) r)) r))
    ((:arrayval __arrayval) (let (r) (dotimes (i 0) (push (instance test_rospy::ArrayVal :init) r)) r))
    )
   (send-super :init)
   (setq _str1 __str1)
   (setq _int1 __int1)
   (setq _ints __ints)
   (setq _val __val)
   (setq _vals __vals)
   (setq _arrayval __arrayval)
   self)
  (:str1
   (&rest __str1)
   (if (keywordp (car __str1))
       (send* _str1 __str1)
     (progn
       (if __str1 (setq _str1 (car __str1)))
       _str1)))
  (:int1
   (&rest __int1)
   (if (keywordp (car __int1))
       (send* _int1 __int1)
     (progn
       (if __int1 (setq _int1 (car __int1)))
       _int1)))
  (:ints
   (&rest __ints)
   (if (keywordp (car __ints))
       (send* _ints __ints)
     (progn
       (if __ints (setq _ints (car __ints)))
       _ints)))
  (:val
   (&rest __val)
   (if (keywordp (car __val))
       (send* _val __val)
     (progn
       (if __val (setq _val (car __val)))
       _val)))
  (:vals
   (&rest __vals)
   (if (keywordp (car __vals))
       (send* _vals __vals)
     (progn
       (if __vals (setq _vals (car __vals)))
       _vals)))
  (:arrayval
   (&rest __arrayval)
   (if (keywordp (car __arrayval))
       (send* _arrayval __arrayval)
     (progn
       (if __arrayval (setq _arrayval (car __arrayval)))
       _arrayval)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _str1
    (send _str1 :serialization-length)
    ;; std_msgs/Int32 _int1
    (send _int1 :serialization-length)
    ;; std_msgs/Int32[] _ints
    (apply #'+ (send-all _ints :serialization-length)) 4
    ;; test_rospy/Val _val
    (send _val :serialization-length)
    ;; test_rospy/Val[] _vals
    (apply #'+ (send-all _vals :serialization-length)) 4
    ;; test_rospy/ArrayVal[] _arrayval
    (apply #'+ (send-all _arrayval :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _str1
       (send _str1 :serialize s)
     ;; std_msgs/Int32 _int1
       (send _int1 :serialize s)
     ;; std_msgs/Int32[] _ints
     (write-long (length _ints) s)
     (dolist (elem _ints)
       (send elem :serialize s)
       )
     ;; test_rospy/Val _val
       (send _val :serialize s)
     ;; test_rospy/Val[] _vals
     (write-long (length _vals) s)
     (dolist (elem _vals)
       (send elem :serialize s)
       )
     ;; test_rospy/ArrayVal[] _arrayval
     (write-long (length _arrayval) s)
     (dolist (elem _arrayval)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _str1
     (send _str1 :deserialize buf ptr-) (incf ptr- (send _str1 :serialization-length))
   ;; std_msgs/Int32 _int1
     (send _int1 :deserialize buf ptr-) (incf ptr- (send _int1 :serialization-length))
   ;; std_msgs/Int32[] _ints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ints (let (r) (dotimes (i n) (push (instance std_msgs::Int32 :init) r)) r))
     (dolist (elem- _ints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; test_rospy/Val _val
     (send _val :deserialize buf ptr-) (incf ptr- (send _val :serialization-length))
   ;; test_rospy/Val[] _vals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vals (let (r) (dotimes (i n) (push (instance test_rospy::Val :init) r)) r))
     (dolist (elem- _vals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; test_rospy/ArrayVal[] _arrayval
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arrayval (let (r) (dotimes (i n) (push (instance test_rospy::ArrayVal :init) r)) r))
     (dolist (elem- _arrayval)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_rospy::EmbedTest :md5sum-) "f8b1fc6a0f70f541c9d6bd2886b9e249")
(setf (get test_rospy::EmbedTest :datatype-) "test_rospy/EmbedTest")
(setf (get test_rospy::EmbedTest :definition-)
      "std_msgs/String str1
std_msgs/Int32 int1
std_msgs/Int32[] ints
Val val
Val[] vals
ArrayVal[] arrayval

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: test_rospy/Val
string val
================================================================================
MSG: test_rospy/ArrayVal
Val[] vals
#Val[10] vals_fixed

")



(provide :test_rospy/EmbedTest "f8b1fc6a0f70f541c9d6bd2886b9e249")


