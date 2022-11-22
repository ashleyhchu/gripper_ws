;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::Simple)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'Simple (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::SIMPLE")
  (make-package "TEST_ROSMASTER::SIMPLE"))

(in-package "ROS")
;;//! \htmlinclude Simple.msg.html


(defclass test_rosmaster::Simple
  :super ros::object
  :slots (_b _int16 _int32 _int64 _c _uint16 _uint32 _uint64 _str ))

(defmethod test_rosmaster::Simple
  (:init
   (&key
    ((:b __b) 0)
    ((:int16 __int16) 0)
    ((:int32 __int32) 0)
    ((:int64 __int64) 0)
    ((:c __c) 0)
    ((:uint16 __uint16) 0)
    ((:uint32 __uint32) 0)
    ((:uint64 __uint64) 0)
    ((:str __str) "")
    )
   (send-super :init)
   (setq _b (round __b))
   (setq _int16 (round __int16))
   (setq _int32 (round __int32))
   (setq _int64 (round __int64))
   (setq _c (round __c))
   (setq _uint16 (round __uint16))
   (setq _uint32 (round __uint32))
   (setq _uint64 (round __uint64))
   (setq _str (string __str))
   self)
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
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
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
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_rosmaster::Simple :md5sum-) "c9940b1313e61fed87cd22c50742578f")
(setf (get test_rosmaster::Simple :datatype-) "test_rosmaster/Simple")
(setf (get test_rosmaster::Simple :definition-)
      "# for rostopic tests
byte b
int16 int16
int32 int32
int64 int64
char c
uint16 uint16
uint32 uint32
uint64 uint64
string str

")



(provide :test_rosmaster/Simple "c9940b1313e61fed87cd22c50742578f")


