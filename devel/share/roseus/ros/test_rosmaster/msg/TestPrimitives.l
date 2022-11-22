;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::TestPrimitives)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'TestPrimitives (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::TESTPRIMITIVES")
  (make-package "TEST_ROSMASTER::TESTPRIMITIVES"))

(in-package "ROS")
;;//! \htmlinclude TestPrimitives.msg.html


(defclass test_rosmaster::TestPrimitives
  :super ros::object
  :slots (_caller_id _orig_caller_id _str _b _int16 _int32 _int64 _c _uint16 _uint32 _uint64 _float32 _float64 _t _d ))

(defmethod test_rosmaster::TestPrimitives
  (:init
   (&key
    ((:caller_id __caller_id) "")
    ((:orig_caller_id __orig_caller_id) "")
    ((:str __str) "")
    ((:b __b) 0)
    ((:int16 __int16) 0)
    ((:int32 __int32) 0)
    ((:int64 __int64) 0)
    ((:c __c) 0)
    ((:uint16 __uint16) 0)
    ((:uint32 __uint32) 0)
    ((:uint64 __uint64) 0)
    ((:float32 __float32) 0.0)
    ((:float64 __float64) 0.0)
    ((:t __t) (instance ros::time :init))
    ((:d __d) (instance ros::time :init))
    )
   (send-super :init)
   (setq _caller_id (string __caller_id))
   (setq _orig_caller_id (string __orig_caller_id))
   (setq _str (string __str))
   (setq _b (round __b))
   (setq _int16 (round __int16))
   (setq _int32 (round __int32))
   (setq _int64 (round __int64))
   (setq _c (round __c))
   (setq _uint16 (round __uint16))
   (setq _uint32 (round __uint32))
   (setq _uint64 (round __uint64))
   (setq _float32 (float __float32))
   (setq _float64 (float __float64))
   (setq _t __t)
   (setq _d __d)
   self)
  (:caller_id
   (&optional __caller_id)
   (if __caller_id (setq _caller_id __caller_id)) _caller_id)
  (:orig_caller_id
   (&optional __orig_caller_id)
   (if __orig_caller_id (setq _orig_caller_id __orig_caller_id)) _orig_caller_id)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:int16
   (&optional __int16)
   (if __int16 (setq _int16 __int16)) _int16)
  (:int32
   (&optional __int32)
   (if __int32 (setq _int32 __int32)) _int32)
  (:int64
   (&optional __int64)
   (if __int64 (setq _int64 __int64)) _int64)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:uint16
   (&optional __uint16)
   (if __uint16 (setq _uint16 __uint16)) _uint16)
  (:uint32
   (&optional __uint32)
   (if __uint32 (setq _uint32 __uint32)) _uint32)
  (:uint64
   (&optional __uint64)
   (if __uint64 (setq _uint64 __uint64)) _uint64)
  (:float32
   (&optional __float32)
   (if __float32 (setq _float32 __float32)) _float32)
  (:float64
   (&optional __float64)
   (if __float64 (setq _float64 __float64)) _float64)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; string _caller_id
    4 (length _caller_id)
    ;; string _orig_caller_id
    4 (length _orig_caller_id)
    ;; string _str
    4 (length _str)
    ;; byte _b
    1
    ;; int16 _int16
    2
    ;; int32 _int32
    4
    ;; int64 _int64
    8
    ;; char _c
    1
    ;; uint16 _uint16
    2
    ;; uint32 _uint32
    4
    ;; uint64 _uint64
    8
    ;; float32 _float32
    4
    ;; float64 _float64
    8
    ;; time _t
    8
    ;; duration _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _caller_id
       (write-long (length _caller_id) s) (princ _caller_id s)
     ;; string _orig_caller_id
       (write-long (length _orig_caller_id) s) (princ _orig_caller_id s)
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;; byte _b
       (write-byte _b s)
     ;; int16 _int16
       (write-word _int16 s)
     ;; int32 _int32
       (write-long _int32 s)
     ;; int64 _int64
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _int64 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _int64) (= (length (_int64 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_int64 . bv) 0) 0) s)
              (write-long (ash (elt (_int64 . bv) 1) -1) s))
             ((and (class _int64) (= (length (_int64 . bv)) 1)) ;; big1
              (write-long (elt (_int64 . bv) 0) s)
              (write-long (if (>= _int64 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _int64 s)(write-long (if (>= _int64 0) 0 #xffffffff) s)))
     ;; char _c
       (write-byte _c s)
     ;; uint16 _uint16
       (write-word _uint16 s)
     ;; uint32 _uint32
       (write-long _uint32 s)
     ;; uint64 _uint64
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uint64 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uint64) (= (length (_uint64 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uint64 . bv) 0) 0) s)
              (write-long (ash (elt (_uint64 . bv) 1) -1) s))
             ((and (class _uint64) (= (length (_uint64 . bv)) 1)) ;; big1
              (write-long (elt (_uint64 . bv) 0) s)
              (write-long (if (>= _uint64 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uint64 s)(write-long (if (>= _uint64 0) 0 #xffffffff) s)))
     ;; float32 _float32
       (sys::poke _float32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _float64
       (sys::poke _float64 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;; duration _d
       (write-long (send _d :sec) s) (write-long (send _d :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _orig_caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orig_caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; byte _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _b 127) (setq _b (- _b 256)))
   ;; int16 _int16
     (setq _int16 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _int32
     (setq _int32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _int64
#+(or :alpha :irix6 :x86_64)
      (setf _int64 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _int64 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; char _c
     (setq _c (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _uint16
     (setq _uint16 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _uint32
     (setq _uint32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _uint64
     
#+(or :alpha :irix6 :x86_64)
      (setf _uint64 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uint64 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _float32
     (setq _float32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _float64
     (setq _float64 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _d
     (send _d :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _d :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosmaster::TestPrimitives :md5sum-) "3e70f428a22c0d26ca67f87802c8e00f")
(setf (get test_rosmaster::TestPrimitives :datatype-) "test_rosmaster/TestPrimitives")
(setf (get test_rosmaster::TestPrimitives :definition-)
      "# Integration test message of all primitive types

# caller_id of most recent node to send this message
string caller_id
# caller_id of the original node to send this message
string orig_caller_id

string str
byte b
int16 int16
int32 int32
int64 int64
char c
uint16 uint16
uint32 uint32
uint64 uint64
float32 float32
float64 float64
time t
duration d


")



(provide :test_rosmaster/TestPrimitives "3e70f428a22c0d26ca67f87802c8e00f")


