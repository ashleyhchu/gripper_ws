;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::TestFixedArray)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'TestFixedArray (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::TESTFIXEDARRAY")
  (make-package "TEST_ROSPY::TESTFIXEDARRAY"))

(in-package "ROS")
;;//! \htmlinclude TestFixedArray.msg.html


(defclass test_rospy::TestFixedArray
  :super ros::object
  :slots (_f32_1 _f32_3 _f64_1 _f64_3 _i8_1 _i8_3 _u8_1 _u8_3 _i32_1 _i32_3 _u32_1 _u32_3 _s_1 _s_3 _b_1 _b_3 ))

(defmethod test_rospy::TestFixedArray
  (:init
   (&key
    ((:f32_1 __f32_1) (make-array 1 :initial-element 0.0 :element-type :float))
    ((:f32_3 __f32_3) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:f64_1 __f64_1) (make-array 1 :initial-element 0.0 :element-type :float))
    ((:f64_3 __f64_3) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:i8_1 __i8_1) (make-array 1 :initial-element 0 :element-type :integer))
    ((:i8_3 __i8_3) (make-array 3 :initial-element 0 :element-type :integer))
    ((:u8_1 __u8_1) (make-array 1 :initial-element 0 :element-type :char))
    ((:u8_3 __u8_3) (make-array 3 :initial-element 0 :element-type :char))
    ((:i32_1 __i32_1) (make-array 1 :initial-element 0 :element-type :integer))
    ((:i32_3 __i32_3) (make-array 3 :initial-element 0 :element-type :integer))
    ((:u32_1 __u32_1) (make-array 1 :initial-element 0 :element-type :integer))
    ((:u32_3 __u32_3) (make-array 3 :initial-element 0 :element-type :integer))
    ((:s_1 __s_1) (let (r) (dotimes (i 1) (push "" r)) r))
    ((:s_3 __s_3) (let (r) (dotimes (i 3) (push "" r)) r))
    ((:b_1 __b_1) (let (r) (dotimes (i 1) (push nil r)) r))
    ((:b_3 __b_3) (let (r) (dotimes (i 3) (push nil r)) r))
    )
   (send-super :init)
   (setq _f32_1 __f32_1)
   (setq _f32_3 __f32_3)
   (setq _f64_1 __f64_1)
   (setq _f64_3 __f64_3)
   (setq _i8_1 __i8_1)
   (setq _i8_3 __i8_3)
   (setq _u8_1 __u8_1)
   (setq _u8_3 __u8_3)
   (setq _i32_1 __i32_1)
   (setq _i32_3 __i32_3)
   (setq _u32_1 __u32_1)
   (setq _u32_3 __u32_3)
   (setq _s_1 __s_1)
   (setq _s_3 __s_3)
   (setq _b_1 __b_1)
   (setq _b_3 __b_3)
   self)
  (:f32_1
   (&optional __f32_1)
   (if __f32_1 (setq _f32_1 __f32_1)) _f32_1)
  (:f32_3
   (&optional __f32_3)
   (if __f32_3 (setq _f32_3 __f32_3)) _f32_3)
  (:f64_1
   (&optional __f64_1)
   (if __f64_1 (setq _f64_1 __f64_1)) _f64_1)
  (:f64_3
   (&optional __f64_3)
   (if __f64_3 (setq _f64_3 __f64_3)) _f64_3)
  (:i8_1
   (&optional __i8_1)
   (if __i8_1 (setq _i8_1 __i8_1)) _i8_1)
  (:i8_3
   (&optional __i8_3)
   (if __i8_3 (setq _i8_3 __i8_3)) _i8_3)
  (:u8_1
   (&optional __u8_1)
   (if __u8_1 (setq _u8_1 __u8_1)) _u8_1)
  (:u8_3
   (&optional __u8_3)
   (if __u8_3 (setq _u8_3 __u8_3)) _u8_3)
  (:i32_1
   (&optional __i32_1)
   (if __i32_1 (setq _i32_1 __i32_1)) _i32_1)
  (:i32_3
   (&optional __i32_3)
   (if __i32_3 (setq _i32_3 __i32_3)) _i32_3)
  (:u32_1
   (&optional __u32_1)
   (if __u32_1 (setq _u32_1 __u32_1)) _u32_1)
  (:u32_3
   (&optional __u32_3)
   (if __u32_3 (setq _u32_3 __u32_3)) _u32_3)
  (:s_1
   (&optional __s_1)
   (if __s_1 (setq _s_1 __s_1)) _s_1)
  (:s_3
   (&optional __s_3)
   (if __s_3 (setq _s_3 __s_3)) _s_3)
  (:b_1
   (&optional __b_1)
   (if __b_1 (setq _b_1 __b_1)) _b_1)
  (:b_3
   (&optional __b_3)
   (if __b_3 (setq _b_3 __b_3)) _b_3)
  (:serialization-length
   ()
   (+
    ;; float32[1] _f32_1
    (* 4    1)
    ;; float32[3] _f32_3
    (* 4    3)
    ;; float64[1] _f64_1
    (* 8    1)
    ;; float64[3] _f64_3
    (* 8    3)
    ;; int8[1] _i8_1
    (* 1    1)
    ;; int8[3] _i8_3
    (* 1    3)
    ;; uint8[1] _u8_1
    (* 1    1)
    ;; uint8[3] _u8_3
    (* 1    3)
    ;; int32[1] _i32_1
    (* 4    1)
    ;; int32[3] _i32_3
    (* 4    3)
    ;; uint32[1] _u32_1
    (* 4    1)
    ;; uint32[3] _u32_3
    (* 4    3)
    ;; string[1] _s_1
    (apply #'+ 4 (length _s_1)    1)
    ;; string[3] _s_3
    (apply #'+ 4 (length _s_3)    3)
    ;; bool[1] _b_1
    (* 1    1)
    ;; bool[3] _b_3
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[1] _f32_1
     (dotimes (i 1)
       (sys::poke (elt _f32_1 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _f32_3
     (dotimes (i 3)
       (sys::poke (elt _f32_3 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64[1] _f64_1
     (dotimes (i 1)
       (sys::poke (elt _f64_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _f64_3
     (dotimes (i 3)
       (sys::poke (elt _f64_3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int8[1] _i8_1
     (dotimes (i 1)
       (write-byte (elt _i8_1 i) s)
       )
     ;; int8[3] _i8_3
     (dotimes (i 3)
       (write-byte (elt _i8_3 i) s)
       )
     ;; uint8[1] _u8_1
     (princ _u8_1 s)
     ;; uint8[3] _u8_3
     (princ _u8_3 s)
     ;; int32[1] _i32_1
     (dotimes (i 1)
       (write-long (elt _i32_1 i) s)
       )
     ;; int32[3] _i32_3
     (dotimes (i 3)
       (write-long (elt _i32_3 i) s)
       )
     ;; uint32[1] _u32_1
     (dotimes (i 1)
       (write-long (elt _u32_1 i) s)
       )
     ;; uint32[3] _u32_3
     (dotimes (i 3)
       (write-long (elt _u32_3 i) s)
       )
     ;; string[1] _s_1
     (write-long (length _s_1) s)
     (dolist (elem _s_1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[3] _s_3
     (write-long (length _s_3) s)
     (dolist (elem _s_3)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[1] _b_1
     (dotimes (i 1)
       (if (elt _b_1 i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[3] _b_3
     (dotimes (i 3)
       (if (elt _b_3 i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[1] _f32_1
   (dotimes (i (length _f32_1))
     (setf (elt _f32_1 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _f32_3
   (dotimes (i (length _f32_3))
     (setf (elt _f32_3 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float64[1] _f64_1
   (dotimes (i (length _f64_1))
     (setf (elt _f64_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _f64_3
   (dotimes (i (length _f64_3))
     (setf (elt _f64_3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int8[1] _i8_1
   (dotimes (i (length _i8_1))
     (setf (elt _i8_1 i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _i8_1 i) 127) (setf (elt _i8_1 i) (- (elt _i8_1 i) 256)))
     )
   ;; int8[3] _i8_3
   (dotimes (i (length _i8_3))
     (setf (elt _i8_3 i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _i8_3 i) 127) (setf (elt _i8_3 i) (- (elt _i8_3 i) 256)))
     )
   ;; uint8[1] _u8_1
   (setq _u8_1 (make-array 1 :element-type :char))
   (replace _u8_1 buf :start2 ptr-) (incf ptr- 1)
   ;; uint8[3] _u8_3
   (setq _u8_3 (make-array 3 :element-type :char))
   (replace _u8_3 buf :start2 ptr-) (incf ptr- 3)
   ;; int32[1] _i32_1
   (dotimes (i (length _i32_1))
     (setf (elt _i32_1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[3] _i32_3
   (dotimes (i (length _i32_3))
     (setf (elt _i32_3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[1] _u32_1
   (dotimes (i (length _u32_1))
     (setf (elt _u32_1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[3] _u32_3
   (dotimes (i (length _u32_3))
     (setf (elt _u32_3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; string[1] _s_1
   (dotimes (i (length _s_1))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _s_1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;; string[3] _s_3
   (dotimes (i (length _s_3))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _s_3 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;; bool[1] _b_1
   (dotimes (i (length _b_1))
     (setf (elt _b_1 i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[3] _b_3
   (dotimes (i (length _b_3))
     (setf (elt _b_3 i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get test_rospy::TestFixedArray :md5sum-) "1557473dc09f1a01a00123a713c822a7")
(setf (get test_rospy::TestFixedArray :datatype-) "test_rospy/TestFixedArray")
(setf (get test_rospy::TestFixedArray :definition-)
      "float32[1] f32_1
float32[3] f32_3
float64[1] f64_1
float64[3] f64_3
int8[1] i8_1
int8[3] i8_3
uint8[1] u8_1
uint8[3] u8_3
int32[1] i32_1
int32[3] i32_3
uint32[1] u32_1
uint32[3] u32_3
string[1] s_1
string[3] s_3
bool[1] b_1
bool[3] b_3
")



(provide :test_rospy/TestFixedArray "1557473dc09f1a01a00123a713c822a7")


