;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::TestArrays)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'TestArrays (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::TESTARRAYS")
  (make-package "TEST_ROSMASTER::TESTARRAYS"))

(in-package "ROS")
;;//! \htmlinclude TestArrays.msg.html


(defclass test_rosmaster::TestArrays
  :super ros::object
  :slots (_caller_id _orig_caller_id _int32_array _float32_array _time_array _test_string_array ))

(defmethod test_rosmaster::TestArrays
  (:init
   (&key
    ((:caller_id __caller_id) "")
    ((:orig_caller_id __orig_caller_id) "")
    ((:int32_array __int32_array) (make-array 0 :initial-element 0 :element-type :integer))
    ((:float32_array __float32_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_array __time_array) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:test_string_array __test_string_array) (let (r) (dotimes (i 0) (push (instance test_rosmaster::TestString :init) r)) r))
    )
   (send-super :init)
   (setq _caller_id (string __caller_id))
   (setq _orig_caller_id (string __orig_caller_id))
   (setq _int32_array __int32_array)
   (setq _float32_array __float32_array)
   (setq _time_array __time_array)
   (setq _test_string_array __test_string_array)
   self)
  (:caller_id
   (&optional __caller_id)
   (if __caller_id (setq _caller_id __caller_id)) _caller_id)
  (:orig_caller_id
   (&optional __orig_caller_id)
   (if __orig_caller_id (setq _orig_caller_id __orig_caller_id)) _orig_caller_id)
  (:int32_array
   (&optional __int32_array)
   (if __int32_array (setq _int32_array __int32_array)) _int32_array)
  (:float32_array
   (&optional __float32_array)
   (if __float32_array (setq _float32_array __float32_array)) _float32_array)
  (:time_array
   (&optional __time_array)
   (if __time_array (setq _time_array __time_array)) _time_array)
  (:test_string_array
   (&rest __test_string_array)
   (if (keywordp (car __test_string_array))
       (send* _test_string_array __test_string_array)
     (progn
       (if __test_string_array (setq _test_string_array (car __test_string_array)))
       _test_string_array)))
  (:serialization-length
   ()
   (+
    ;; string _caller_id
    4 (length _caller_id)
    ;; string _orig_caller_id
    4 (length _orig_caller_id)
    ;; int32[] _int32_array
    (* 4    (length _int32_array)) 4
    ;; float32[] _float32_array
    (* 4    (length _float32_array)) 4
    ;; time[] _time_array
    (* 8    (length _time_array)) 4
    ;; test_rosmaster/TestString[] _test_string_array
    (apply #'+ (send-all _test_string_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _caller_id
       (write-long (length _caller_id) s) (princ _caller_id s)
     ;; string _orig_caller_id
       (write-long (length _orig_caller_id) s) (princ _orig_caller_id s)
     ;; int32[] _int32_array
     (write-long (length _int32_array) s)
     (dotimes (i (length _int32_array))
       (write-long (elt _int32_array i) s)
       )
     ;; float32[] _float32_array
     (write-long (length _float32_array) s)
     (dotimes (i (length _float32_array))
       (sys::poke (elt _float32_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; time[] _time_array
     (write-long (length _time_array) s)
     (dotimes (i (length _time_array))
       (write-long (send (elt _time_array i) :sec) s) (write-long (send (elt _time_array i) :nsec) s)
       )
     ;; test_rosmaster/TestString[] _test_string_array
     (write-long (length _test_string_array) s)
     (dolist (elem _test_string_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _orig_caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orig_caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _int32_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int32_array (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _int32_array i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _float32_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _float32_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _float32_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; time[] _time_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_array (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _time_array)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; test_rosmaster/TestString[] _test_string_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _test_string_array (let (r) (dotimes (i n) (push (instance test_rosmaster::TestString :init) r)) r))
     (dolist (elem- _test_string_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get test_rosmaster::TestArrays :md5sum-) "4cc9b5e2cebe791aa3e994f5bc159eb6")
(setf (get test_rosmaster::TestArrays :datatype-) "test_rosmaster/TestArrays")
(setf (get test_rosmaster::TestArrays :definition-)
      "# caller_id of most recent node to send this message
string caller_id
# caller_id of the original node to send this message
string orig_caller_id

int32[] int32_array
float32[] float32_array
time[] time_array
TestString[] test_string_array
# TODO: array of arrays

================================================================================
MSG: test_rosmaster/TestString
# Integration test message
# caller_id of most recent node to send this message
string caller_id
# caller_id of the original node to send this message
string orig_caller_id
string data

")



(provide :test_rosmaster/TestArrays "4cc9b5e2cebe791aa3e994f5bc159eb6")


