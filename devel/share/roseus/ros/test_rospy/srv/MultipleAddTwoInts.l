;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::MultipleAddTwoInts)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'MultipleAddTwoInts (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::MULTIPLEADDTWOINTS")
  (make-package "TEST_ROSPY::MULTIPLEADDTWOINTS"))
(unless (find-package "TEST_ROSPY::MULTIPLEADDTWOINTSREQUEST")
  (make-package "TEST_ROSPY::MULTIPLEADDTWOINTSREQUEST"))
(unless (find-package "TEST_ROSPY::MULTIPLEADDTWOINTSRESPONSE")
  (make-package "TEST_ROSPY::MULTIPLEADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass test_rospy::MultipleAddTwoIntsRequest
  :super ros::object
  :slots (_a _b _c _d ))

(defmethod test_rospy::MultipleAddTwoIntsRequest
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

(defclass test_rospy::MultipleAddTwoIntsResponse
  :super ros::object
  :slots (_ab _cd ))

(defmethod test_rospy::MultipleAddTwoIntsResponse
  (:init
   (&key
    ((:ab __ab) 0)
    ((:cd __cd) 0)
    )
   (send-super :init)
   (setq _ab (round __ab))
   (setq _cd (round __cd))
   self)
  (:ab
   (&optional __ab)
   (if __ab (setq _ab __ab)) _ab)
  (:cd
   (&optional __cd)
   (if __cd (setq _cd __cd)) _cd)
  (:serialization-length
   ()
   (+
    ;; int32 _ab
    4
    ;; int32 _cd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ab
       (write-long _ab s)
     ;; int32 _cd
       (write-long _cd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ab
     (setq _ab (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cd
     (setq _cd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rospy::MultipleAddTwoInts
  :super ros::object
  :slots ())

(setf (get test_rospy::MultipleAddTwoInts :md5sum-) "51899e11b54a9c6a1153d9517a921791")
(setf (get test_rospy::MultipleAddTwoInts :datatype-) "test_rospy/MultipleAddTwoInts")
(setf (get test_rospy::MultipleAddTwoInts :request) test_rospy::MultipleAddTwoIntsRequest)
(setf (get test_rospy::MultipleAddTwoInts :response) test_rospy::MultipleAddTwoIntsResponse)

(defmethod test_rospy::MultipleAddTwoIntsRequest
  (:response () (instance test_rospy::MultipleAddTwoIntsResponse :init)))

(setf (get test_rospy::MultipleAddTwoIntsRequest :md5sum-) "51899e11b54a9c6a1153d9517a921791")
(setf (get test_rospy::MultipleAddTwoIntsRequest :datatype-) "test_rospy/MultipleAddTwoIntsRequest")
(setf (get test_rospy::MultipleAddTwoIntsRequest :definition-)
      "# test case for having multiple return values
int32 a
int32 b
int32 c
int32 d
---
int32 ab
int32 cd
")

(setf (get test_rospy::MultipleAddTwoIntsResponse :md5sum-) "51899e11b54a9c6a1153d9517a921791")
(setf (get test_rospy::MultipleAddTwoIntsResponse :datatype-) "test_rospy/MultipleAddTwoIntsResponse")
(setf (get test_rospy::MultipleAddTwoIntsResponse :definition-)
      "# test case for having multiple return values
int32 a
int32 b
int32 c
int32 d
---
int32 ab
int32 cd
")



(provide :test_rospy/MultipleAddTwoInts "51899e11b54a9c6a1153d9517a921791")


