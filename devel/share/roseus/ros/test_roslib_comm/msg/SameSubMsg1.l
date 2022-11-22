;; Auto-generated. Do not edit!


(when (boundp 'test_roslib_comm::SameSubMsg1)
  (if (not (find-package "TEST_ROSLIB_COMM"))
    (make-package "TEST_ROSLIB_COMM"))
  (shadow 'SameSubMsg1 (find-package "TEST_ROSLIB_COMM")))
(unless (find-package "TEST_ROSLIB_COMM::SAMESUBMSG1")
  (make-package "TEST_ROSLIB_COMM::SAMESUBMSG1"))

(in-package "ROS")
;;//! \htmlinclude SameSubMsg1.msg.html


(defclass test_roslib_comm::SameSubMsg1
  :super ros::object
  :slots (_a _b _c _d _e ))

(defmethod test_roslib_comm::SameSubMsg1
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0.0)
    ((:c __c) "")
    ((:d __d) (make-array 10 :initial-element 0 :element-type :integer))
    ((:e __e) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (float __b))
   (setq _c (string __c))
   (setq _d __d)
   (setq _e __e)
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
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; float32 _b
    4
    ;; string _c
    4 (length _c)
    ;; uint64[10] _d
    (* 8    10)
    ;; float64[] _e
    (* 8    (length _e)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _c
       (write-long (length _c) s) (princ _c s)
     ;; uint64[10] _d
     (dotimes (i 10)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _d i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _d i)) (= (length ((elt _d i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _d i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _d i) . bv) 1) -1) s))
             ((and (class (elt _d i)) (= (length ((elt _d i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _d i) . bv) 0) s)
              (write-long (if (>= (elt _d i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _d i) s)(write-long (if (>= (elt _d i) 0) 0 #xffffffff) s)))
       )
     ;; float64[] _e
     (write-long (length _e) s)
     (dotimes (i (length _e))
       (sys::poke (elt _e i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _c
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _c (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64[10] _d
   (dotimes (i (length _d))
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _d i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _d i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; float64[] _e
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _e (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _e i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get test_roslib_comm::SameSubMsg1 :md5sum-) "49145a54e4be1a218629e518575a0bf3")
(setf (get test_roslib_comm::SameSubMsg1 :datatype-) "test_roslib_comm/SameSubMsg1")
(setf (get test_roslib_comm::SameSubMsg1 :definition-)
      "int32 a
float32 b
string c
uint64[10] d
float64[] e
")



(provide :test_roslib_comm/SameSubMsg1 "49145a54e4be1a218629e518575a0bf3")


