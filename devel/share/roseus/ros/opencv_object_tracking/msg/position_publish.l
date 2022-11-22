;; Auto-generated. Do not edit!


(when (boundp 'opencv_object_tracking::position_publish)
  (if (not (find-package "OPENCV_OBJECT_TRACKING"))
    (make-package "OPENCV_OBJECT_TRACKING"))
  (shadow 'position_publish (find-package "OPENCV_OBJECT_TRACKING")))
(unless (find-package "OPENCV_OBJECT_TRACKING::POSITION_PUBLISH")
  (make-package "OPENCV_OBJECT_TRACKING::POSITION_PUBLISH"))

(in-package "ROS")
;;//! \htmlinclude position_publish.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass opencv_object_tracking::position_publish
  :super ros::object
  :slots (_Position_XYZ _center_pixel_x _center_pixel_y _counter ))

(defmethod opencv_object_tracking::position_publish
  (:init
   (&key
    ((:Position_XYZ __Position_XYZ) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:center_pixel_x __center_pixel_x) 0)
    ((:center_pixel_y __center_pixel_y) 0)
    ((:counter __counter) 0)
    )
   (send-super :init)
   (setq _Position_XYZ __Position_XYZ)
   (setq _center_pixel_x (round __center_pixel_x))
   (setq _center_pixel_y (round __center_pixel_y))
   (setq _counter (round __counter))
   self)
  (:Position_XYZ
   (&rest __Position_XYZ)
   (if (keywordp (car __Position_XYZ))
       (send* _Position_XYZ __Position_XYZ)
     (progn
       (if __Position_XYZ (setq _Position_XYZ (car __Position_XYZ)))
       _Position_XYZ)))
  (:center_pixel_x
   (&optional __center_pixel_x)
   (if __center_pixel_x (setq _center_pixel_x __center_pixel_x)) _center_pixel_x)
  (:center_pixel_y
   (&optional __center_pixel_y)
   (if __center_pixel_y (setq _center_pixel_y __center_pixel_y)) _center_pixel_y)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _Position_XYZ
    (apply #'+ (send-all _Position_XYZ :serialization-length)) 4
    ;; uint16 _center_pixel_x
    2
    ;; uint16 _center_pixel_y
    2
    ;; uint8 _counter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _Position_XYZ
     (write-long (length _Position_XYZ) s)
     (dolist (elem _Position_XYZ)
       (send elem :serialize s)
       )
     ;; uint16 _center_pixel_x
       (write-word _center_pixel_x s)
     ;; uint16 _center_pixel_y
       (write-word _center_pixel_y s)
     ;; uint8 _counter
       (write-byte _counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _Position_XYZ
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Position_XYZ (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _Position_XYZ)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint16 _center_pixel_x
     (setq _center_pixel_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _center_pixel_y
     (setq _center_pixel_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _counter
     (setq _counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get opencv_object_tracking::position_publish :md5sum-) "6fff6255329776d371aac32c4bd148c0")
(setf (get opencv_object_tracking::position_publish :datatype-) "opencv_object_tracking/position_publish")
(setf (get opencv_object_tracking::position_publish :definition-)
      "geometry_msgs/Point[] Position_XYZ
uint16 center_pixel_x
uint16 center_pixel_y
uint8 counter

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :opencv_object_tracking/position_publish "6fff6255329776d371aac32c4bd148c0")


