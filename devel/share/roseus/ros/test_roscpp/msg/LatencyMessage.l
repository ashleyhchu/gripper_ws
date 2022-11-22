;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::LatencyMessage)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'LatencyMessage (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::LATENCYMESSAGE")
  (make-package "TEST_ROSCPP::LATENCYMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude LatencyMessage.msg.html


(defclass test_roscpp::LatencyMessage
  :super ros::object
  :slots (_publish_time _receipt_time _count _thread_index _array ))

(defmethod test_roscpp::LatencyMessage
  (:init
   (&key
    ((:publish_time __publish_time) 0.0)
    ((:receipt_time __receipt_time) 0.0)
    ((:count __count) 0)
    ((:thread_index __thread_index) 0)
    ((:array __array) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _publish_time (float __publish_time))
   (setq _receipt_time (float __receipt_time))
   (setq _count (round __count))
   (setq _thread_index (round __thread_index))
   (setq _array __array)
   self)
  (:publish_time
   (&optional __publish_time)
   (if __publish_time (setq _publish_time __publish_time)) _publish_time)
  (:receipt_time
   (&optional __receipt_time)
   (if __receipt_time (setq _receipt_time __receipt_time)) _receipt_time)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:thread_index
   (&optional __thread_index)
   (if __thread_index (setq _thread_index __thread_index)) _thread_index)
  (:array
   (&optional __array)
   (if __array (setq _array __array)) _array)
  (:serialization-length
   ()
   (+
    ;; float64 _publish_time
    8
    ;; float64 _receipt_time
    8
    ;; uint64 _count
    8
    ;; uint32 _thread_index
    4
    ;; uint8[] _array
    (* 1    (length _array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _publish_time
       (sys::poke _publish_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _receipt_time
       (sys::poke _receipt_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _count) (= (length (_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_count . bv) 0) 0) s)
              (write-long (ash (elt (_count . bv) 1) -1) s))
             ((and (class _count) (= (length (_count . bv)) 1)) ;; big1
              (write-long (elt (_count . bv) 0) s)
              (write-long (if (>= _count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _count s)(write-long (if (>= _count 0) 0 #xffffffff) s)))
     ;; uint32 _thread_index
       (write-long _thread_index s)
     ;; uint8[] _array
     (write-long (length _array) s)
     (princ _array s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _publish_time
     (setq _publish_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _receipt_time
     (setq _receipt_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _count
     
#+(or :alpha :irix6 :x86_64)
      (setf _count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _thread_index
     (setq _thread_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _array
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _array (make-array n :element-type :char))
     (replace _array buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_roscpp::LatencyMessage :md5sum-) "be90d117303321f392404ed7edeb7c8c")
(setf (get test_roscpp::LatencyMessage :datatype-) "test_roscpp/LatencyMessage")
(setf (get test_roscpp::LatencyMessage :definition-)
      "float64 publish_time
float64 receipt_time
uint64 count
uint32 thread_index
uint8[] array


")



(provide :test_roscpp/LatencyMessage "be90d117303321f392404ed7edeb7c8c")


