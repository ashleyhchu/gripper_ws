; Auto-generated. Do not edit!


(cl:in-package opencv_object_tracking-msg)


;//! \htmlinclude position_publish.msg.html

(cl:defclass <position_publish> (roslisp-msg-protocol:ros-message)
  ((Position_XYZ
    :reader Position_XYZ
    :initarg :Position_XYZ
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (center_pixel_x
    :reader center_pixel_x
    :initarg :center_pixel_x
    :type cl:fixnum
    :initform 0)
   (center_pixel_y
    :reader center_pixel_y
    :initarg :center_pixel_y
    :type cl:fixnum
    :initform 0)
   (counter
    :reader counter
    :initarg :counter
    :type cl:fixnum
    :initform 0))
)

(cl:defclass position_publish (<position_publish>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position_publish>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position_publish)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opencv_object_tracking-msg:<position_publish> is deprecated: use opencv_object_tracking-msg:position_publish instead.")))

(cl:ensure-generic-function 'Position_XYZ-val :lambda-list '(m))
(cl:defmethod Position_XYZ-val ((m <position_publish>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_object_tracking-msg:Position_XYZ-val is deprecated.  Use opencv_object_tracking-msg:Position_XYZ instead.")
  (Position_XYZ m))

(cl:ensure-generic-function 'center_pixel_x-val :lambda-list '(m))
(cl:defmethod center_pixel_x-val ((m <position_publish>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_object_tracking-msg:center_pixel_x-val is deprecated.  Use opencv_object_tracking-msg:center_pixel_x instead.")
  (center_pixel_x m))

(cl:ensure-generic-function 'center_pixel_y-val :lambda-list '(m))
(cl:defmethod center_pixel_y-val ((m <position_publish>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_object_tracking-msg:center_pixel_y-val is deprecated.  Use opencv_object_tracking-msg:center_pixel_y instead.")
  (center_pixel_y m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <position_publish>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_object_tracking-msg:counter-val is deprecated.  Use opencv_object_tracking-msg:counter instead.")
  (counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position_publish>) ostream)
  "Serializes a message object of type '<position_publish>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Position_XYZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Position_XYZ))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'center_pixel_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'center_pixel_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'center_pixel_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'center_pixel_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position_publish>) istream)
  "Deserializes a message object of type '<position_publish>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Position_XYZ) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Position_XYZ)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'center_pixel_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'center_pixel_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'center_pixel_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'center_pixel_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position_publish>)))
  "Returns string type for a message object of type '<position_publish>"
  "opencv_object_tracking/position_publish")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position_publish)))
  "Returns string type for a message object of type 'position_publish"
  "opencv_object_tracking/position_publish")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position_publish>)))
  "Returns md5sum for a message object of type '<position_publish>"
  "6fff6255329776d371aac32c4bd148c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position_publish)))
  "Returns md5sum for a message object of type 'position_publish"
  "6fff6255329776d371aac32c4bd148c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position_publish>)))
  "Returns full string definition for message of type '<position_publish>"
  (cl:format cl:nil "geometry_msgs/Point[] Position_XYZ~%uint16 center_pixel_x~%uint16 center_pixel_y~%uint8 counter~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position_publish)))
  "Returns full string definition for message of type 'position_publish"
  (cl:format cl:nil "geometry_msgs/Point[] Position_XYZ~%uint16 center_pixel_x~%uint16 center_pixel_y~%uint8 counter~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position_publish>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Position_XYZ) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position_publish>))
  "Converts a ROS message object to a list"
  (cl:list 'position_publish
    (cl:cons ':Position_XYZ (Position_XYZ msg))
    (cl:cons ':center_pixel_x (center_pixel_x msg))
    (cl:cons ':center_pixel_y (center_pixel_y msg))
    (cl:cons ':counter (counter msg))
))
