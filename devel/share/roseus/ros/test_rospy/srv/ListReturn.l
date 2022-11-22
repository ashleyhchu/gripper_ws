;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::ListReturn)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'ListReturn (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::LISTRETURN")
  (make-package "TEST_ROSPY::LISTRETURN"))
(unless (find-package "TEST_ROSPY::LISTRETURNREQUEST")
  (make-package "TEST_ROSPY::LISTRETURNREQUEST"))
(unless (find-package "TEST_ROSPY::LISTRETURNRESPONSE")
  (make-package "TEST_ROSPY::LISTRETURNRESPONSE"))

(in-package "ROS")





(defclass test_rospy::ListReturnRequest
  :super ros::object
  :slots (_a _b _c _d ))

(defmethod test_rospy::ListReturnRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    ((:c __c) 0)
    ((:d __d) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   (setq _c (round __c))
   (setq _d (round __d))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ;; int32 _c
    4
    ;; int32 _d
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;; int32 _c
       (write-long _c s)
     ;; int32 _d
       (write-long _d s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _c
     (setq _c (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _d
     (setq _d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rospy::ListReturnResponse
  :super ros::object
  :slots (_abcd ))

(defmethod test_rospy::ListReturnResponse
  (:init
   (&key
    ((:abcd __abcd) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _abcd __abcd)
   self)
  (:abcd
   (&optional __abcd)
   (if __abcd (setq _abcd __abcd)) _abcd)
  (:serialization-length
   ()
   (+
    ;; int32[] _abcd
    (* 4    (length _abcd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _abcd
     (write-long (length _abcd) s)
     (dotimes (i (length _abcd))
       (write-long (elt _abcd i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _abcd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _abcd (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _abcd i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass test_rospy::ListReturn
  :super ros::object
  :slots ())

(setf (get test_rospy::ListReturn :md5sum-) "8083abf57e6eb0ff97ebb506984b66b8")
(setf (get test_rospy::ListReturn :datatype-) "test_rospy/ListReturn")
(setf (get test_rospy::ListReturn :request) test_rospy::ListReturnRequest)
(setf (get test_rospy::ListReturn :response) test_rospy::ListReturnResponse)

(defmethod test_rospy::ListReturnRequest
  (:response () (instance test_rospy::ListReturnResponse :init)))

(setf (get test_rospy::ListReturnRequest :md5sum-) "8083abf57e6eb0ff97ebb506984b66b8")
(setf (get test_rospy::ListReturnRequest :datatype-) "test_rospy/ListReturnRequest")
(setf (get test_rospy::ListReturnRequest :definition-)
      "# test case for having single list return value
int32 a
int32 b
int32 c
int32 d
---
int32[] abcd

")

(setf (get test_rospy::ListReturnResponse :md5sum-) "8083abf57e6eb0ff97ebb506984b66b8")
(setf (get test_rospy::ListReturnResponse :datatype-) "test_rospy/ListReturnResponse")
(setf (get test_rospy::ListReturnResponse :definition-)
      "# test case for having single list return value
int32 a
int32 b
int32 c
int32 d
---
int32[] abcd

")



(provide :test_rospy/ListReturn "8083abf57e6eb0ff97ebb506984b66b8")


