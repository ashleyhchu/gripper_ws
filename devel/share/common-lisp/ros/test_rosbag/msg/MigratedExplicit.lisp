; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude MigratedExplicit.msg.html

(cl:defclass <MigratedExplicit> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (field2
    :reader field2
    :initarg :field2
    :type cl:float
    :initform 0.0)
   (combo_field3
    :reader combo_field3
    :initarg :combo_field3
    :type cl:string
    :initform "")
   (field4
    :reader field4
    :initarg :field4
    :type cl:integer
    :initform 0))
)

(cl:defclass MigratedExplicit (<MigratedExplicit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MigratedExplicit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MigratedExplicit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<MigratedExplicit> is deprecated: use test_rosbag-msg:MigratedExplicit instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MigratedExplicit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:header-val is deprecated.  Use test_rosbag-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <MigratedExplicit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field2-val is deprecated.  Use test_rosbag-msg:field2 instead.")
  (field2 m))

(cl:ensure-generic-function 'combo_field3-val :lambda-list '(m))
(cl:defmethod combo_field3-val ((m <MigratedExplicit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:combo_field3-val is deprecated.  Use test_rosbag-msg:combo_field3 instead.")
  (combo_field3 m))

(cl:ensure-generic-function 'field4-val :lambda-list '(m))
(cl:defmethod field4-val ((m <MigratedExplicit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field4-val is deprecated.  Use test_rosbag-msg:field4 instead.")
  (field4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MigratedExplicit>) ostream)
  "Serializes a message object of type '<MigratedExplicit>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'field2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'combo_field3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'combo_field3))
  (cl:let* ((signed (cl:slot-value msg 'field4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MigratedExplicit>) istream)
  "Deserializes a message object of type '<MigratedExplicit>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'field2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'combo_field3) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'combo_field3) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MigratedExplicit>)))
  "Returns string type for a message object of type '<MigratedExplicit>"
  "test_rosbag/MigratedExplicit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MigratedExplicit)))
  "Returns string type for a message object of type 'MigratedExplicit"
  "test_rosbag/MigratedExplicit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MigratedExplicit>)))
  "Returns md5sum for a message object of type '<MigratedExplicit>"
  "61091b48e6dd7d581a3c956e639b9ccf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MigratedExplicit)))
  "Returns md5sum for a message object of type 'MigratedExplicit"
  "61091b48e6dd7d581a3c956e639b9ccf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MigratedExplicit>)))
  "Returns full string definition for message of type '<MigratedExplicit>"
  (cl:format cl:nil "Header  header~%float32 field2 #58.2~%string  combo_field3 #\"aldfkja 17\"~%int32   field4 #82~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MigratedExplicit)))
  "Returns full string definition for message of type 'MigratedExplicit"
  (cl:format cl:nil "Header  header~%float32 field2 #58.2~%string  combo_field3 #\"aldfkja 17\"~%int32   field4 #82~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MigratedExplicit>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'combo_field3))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MigratedExplicit>))
  "Converts a ROS message object to a list"
  (cl:list 'MigratedExplicit
    (cl:cons ':header (header msg))
    (cl:cons ':field2 (field2 msg))
    (cl:cons ':combo_field3 (combo_field3 msg))
    (cl:cons ':field4 (field4 msg))
))
