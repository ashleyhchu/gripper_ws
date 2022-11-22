; Auto-generated. Do not edit!


(cl:in-package droidspeak-msg)


;//! \htmlinclude DroidChat.msg.html

(cl:defclass <DroidChat> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (spaces
    :reader spaces
    :initarg :spaces
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DroidChat (<DroidChat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroidChat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroidChat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name droidspeak-msg:<DroidChat> is deprecated: use droidspeak-msg:DroidChat instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DroidChat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droidspeak-msg:data-val is deprecated.  Use droidspeak-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'spaces-val :lambda-list '(m))
(cl:defmethod spaces-val ((m <DroidChat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droidspeak-msg:spaces-val is deprecated.  Use droidspeak-msg:spaces instead.")
  (spaces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroidChat>) ostream)
  "Serializes a message object of type '<DroidChat>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'spaces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'spaces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroidChat>) istream)
  "Deserializes a message object of type '<DroidChat>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'spaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'spaces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroidChat>)))
  "Returns string type for a message object of type '<DroidChat>"
  "droidspeak/DroidChat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroidChat)))
  "Returns string type for a message object of type 'DroidChat"
  "droidspeak/DroidChat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroidChat>)))
  "Returns md5sum for a message object of type '<DroidChat>"
  "14b3c1f13ca46764581966919c8bdd15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroidChat)))
  "Returns md5sum for a message object of type 'DroidChat"
  "14b3c1f13ca46764581966919c8bdd15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroidChat>)))
  "Returns full string definition for message of type '<DroidChat>"
  (cl:format cl:nil "string data~%float32[] spaces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroidChat)))
  "Returns full string definition for message of type 'DroidChat"
  (cl:format cl:nil "string data~%float32[] spaces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroidChat>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'spaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroidChat>))
  "Converts a ROS message object to a list"
  (cl:list 'DroidChat
    (cl:cons ':data (data msg))
    (cl:cons ':spaces (spaces msg))
))
