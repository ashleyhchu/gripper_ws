; Auto-generated. Do not edit!


(cl:in-package droidspeak-srv)


;//! \htmlinclude DroidEmotion-request.msg.html

(cl:defclass <DroidEmotion-request> (roslisp-msg-protocol:ros-message)
  ((emotion
    :reader emotion
    :initarg :emotion
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass DroidEmotion-request (<DroidEmotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroidEmotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroidEmotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name droidspeak-srv:<DroidEmotion-request> is deprecated: use droidspeak-srv:DroidEmotion-request instead.")))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <DroidEmotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droidspeak-srv:emotion-val is deprecated.  Use droidspeak-srv:emotion instead.")
  (emotion m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <DroidEmotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droidspeak-srv:duration-val is deprecated.  Use droidspeak-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DroidEmotion-request>)))
    "Constants for message type '<DroidEmotion-request>"
  '((:NORMAL . 0)
    (:HAPPY . 1)
    (:SORRY . 2)
    (:ANGRY . 3)
    (:JADED . 4)
    (:LOOK_LEFT . 5)
    (:LOOK_RIGHT . 6)
    (:LOOK_UP . 7)
    (:LOOK_DOWN . 8)
    (:BLINK . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DroidEmotion-request)))
    "Constants for message type 'DroidEmotion-request"
  '((:NORMAL . 0)
    (:HAPPY . 1)
    (:SORRY . 2)
    (:ANGRY . 3)
    (:JADED . 4)
    (:LOOK_LEFT . 5)
    (:LOOK_RIGHT . 6)
    (:LOOK_UP . 7)
    (:LOOK_DOWN . 8)
    (:BLINK . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroidEmotion-request>) ostream)
  "Serializes a message object of type '<DroidEmotion-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emotion)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroidEmotion-request>) istream)
  "Deserializes a message object of type '<DroidEmotion-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emotion)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroidEmotion-request>)))
  "Returns string type for a service object of type '<DroidEmotion-request>"
  "droidspeak/DroidEmotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroidEmotion-request)))
  "Returns string type for a service object of type 'DroidEmotion-request"
  "droidspeak/DroidEmotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroidEmotion-request>)))
  "Returns md5sum for a message object of type '<DroidEmotion-request>"
  "3121217addb14943825726ec606b461f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroidEmotion-request)))
  "Returns md5sum for a message object of type 'DroidEmotion-request"
  "3121217addb14943825726ec606b461f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroidEmotion-request>)))
  "Returns full string definition for message of type '<DroidEmotion-request>"
  (cl:format cl:nil "uint8 NORMAL=0~%uint8 HAPPY=1~%uint8 SORRY=2~%uint8 ANGRY=3~%uint8 JADED=4~%uint8 LOOK_LEFT=5~%uint8 LOOK_RIGHT=6~%uint8 LOOK_UP=7~%uint8 LOOK_DOWN=8~%uint8 BLINK=9~%~%uint8 emotion~%duration duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroidEmotion-request)))
  "Returns full string definition for message of type 'DroidEmotion-request"
  (cl:format cl:nil "uint8 NORMAL=0~%uint8 HAPPY=1~%uint8 SORRY=2~%uint8 ANGRY=3~%uint8 JADED=4~%uint8 LOOK_LEFT=5~%uint8 LOOK_RIGHT=6~%uint8 LOOK_UP=7~%uint8 LOOK_DOWN=8~%uint8 BLINK=9~%~%uint8 emotion~%duration duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroidEmotion-request>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroidEmotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DroidEmotion-request
    (cl:cons ':emotion (emotion msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude DroidEmotion-response.msg.html

(cl:defclass <DroidEmotion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DroidEmotion-response (<DroidEmotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroidEmotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroidEmotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name droidspeak-srv:<DroidEmotion-response> is deprecated: use droidspeak-srv:DroidEmotion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroidEmotion-response>) ostream)
  "Serializes a message object of type '<DroidEmotion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroidEmotion-response>) istream)
  "Deserializes a message object of type '<DroidEmotion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroidEmotion-response>)))
  "Returns string type for a service object of type '<DroidEmotion-response>"
  "droidspeak/DroidEmotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroidEmotion-response)))
  "Returns string type for a service object of type 'DroidEmotion-response"
  "droidspeak/DroidEmotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroidEmotion-response>)))
  "Returns md5sum for a message object of type '<DroidEmotion-response>"
  "3121217addb14943825726ec606b461f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroidEmotion-response)))
  "Returns md5sum for a message object of type 'DroidEmotion-response"
  "3121217addb14943825726ec606b461f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroidEmotion-response>)))
  "Returns full string definition for message of type '<DroidEmotion-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroidEmotion-response)))
  "Returns full string definition for message of type 'DroidEmotion-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroidEmotion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroidEmotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DroidEmotion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DroidEmotion)))
  'DroidEmotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DroidEmotion)))
  'DroidEmotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroidEmotion)))
  "Returns string type for a service object of type '<DroidEmotion>"
  "droidspeak/DroidEmotion")