;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::StringString)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'StringString (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::STRINGSTRING")
  (make-package "TEST_ROSPY::STRINGSTRING"))
(unless (find-package "TEST_ROSPY::STRINGSTRINGREQUEST")
  (make-package "TEST_ROSPY::STRINGSTRINGREQUEST"))
(unless (find-package "TEST_ROSPY::STRINGSTRINGRESPONSE")
  (make-package "TEST_ROSPY::STRINGSTRINGRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_rospy::StringStringRequest
  :super ros::object
  :slots (_str _str2 ))

(defmethod test_rospy::StringStringRequest
  (:init
   (&key
    ((:str __str) (instance std_msgs::String :init))
    ((:str2 __str2) (instance test_rospy::Val :init))
    )
   (send-super :init)
   (setq _str __str)
   (setq _str2 __str2)
   self)
  (:str
   (&rest __str)
   (if (keywordp (car __str))
       (send* _str __str)
     (progn
       (if __str (setq _str (car __str)))
       _str)))
  (:str2
   (&rest __str2)
   (if (keywordp (car __str2))
       (send* _str2 __str2)
     (progn
       (if __str2 (setq _str2 (car __str2)))
       _str2)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _str
    (send _str :serialization-length)
    ;; test_rospy/Val _str2
    (send _str2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _str
       (send _str :serialize s)
     ;; test_rospy/Val _str2
       (send _str2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _str
     (send _str :deserialize buf ptr-) (incf ptr- (send _str :serialization-length))
   ;; test_rospy/Val _str2
     (send _str2 :deserialize buf ptr-) (incf ptr- (send _str2 :serialization-length))
   ;;
   self)
  )

(defclass test_rospy::StringStringResponse
  :super ros::object
  :slots (_str ))

(defmethod test_rospy::StringStringResponse
  (:init
   (&key
    ((:str __str) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _str __str)
   self)
  (:str
   (&rest __str)
   (if (keywordp (car __str))
       (send* _str __str)
     (progn
       (if __str (setq _str (car __str)))
       _str)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _str
    (send _str :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _str
       (send _str :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _str
     (send _str :deserialize buf ptr-) (incf ptr- (send _str :serialization-length))
   ;;
   self)
  )

(defclass test_rospy::StringString
  :super ros::object
  :slots ())

(setf (get test_rospy::StringString :md5sum-) "37bf11bf0378473e105b4a52f61d1a75")
(setf (get test_rospy::StringString :datatype-) "test_rospy/StringString")
(setf (get test_rospy::StringString :request) test_rospy::StringStringRequest)
(setf (get test_rospy::StringString :response) test_rospy::StringStringResponse)

(defmethod test_rospy::StringStringRequest
  (:response () (instance test_rospy::StringStringResponse :init)))

(setf (get test_rospy::StringStringRequest :md5sum-) "37bf11bf0378473e105b4a52f61d1a75")
(setf (get test_rospy::StringStringRequest :datatype-) "test_rospy/StringStringRequest")
(setf (get test_rospy::StringStringRequest :definition-)
      "std_msgs/String str
Val str2

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: test_rospy/Val
---
std_msgs/String str


================================================================================
MSG: std_msgs/String
string data
")

(setf (get test_rospy::StringStringResponse :md5sum-) "37bf11bf0378473e105b4a52f61d1a75")
(setf (get test_rospy::StringStringResponse :datatype-) "test_rospy/StringStringResponse")
(setf (get test_rospy::StringStringResponse :definition-)
      "std_msgs/String str
Val str2

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: test_rospy/Val
---
std_msgs/String str


================================================================================
MSG: std_msgs/String
string data
")



(provide :test_rospy/StringString "37bf11bf0378473e105b4a52f61d1a75")


