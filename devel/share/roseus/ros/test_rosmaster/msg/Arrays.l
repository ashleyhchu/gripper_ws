;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::Arrays)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'Arrays (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::ARRAYS")
  (make-package "TEST_ROSMASTER::ARRAYS"))

(in-package "ROS")
;;//! \htmlinclude Arrays.msg.html


(defclass test_rosmaster::Arrays
  :super ros::object
  :slots (_int8_arr _uint8_arr _int32_arr _uint32_arr _string_arr _time_arr ))

(defmethod test_rosmaster::Arrays
  (:init
   (&key
    ((:int8_arr __int8_arr) (make-array 0 :initial-element 0 :element-type :integer))
    ((:uint8_arr __uint8_arr) (make-array 0 :initial-element 0 :element-type :char))
    ((:int32_arr __int32_arr) (make-array 0 :initial-element 0 :element-type :integer))
    ((:uint32_arr __uint32_arr) (make-array 0 :initial-element 0 :element-type :integer))
    ((:string_arr __string_arr) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:time_arr __time_arr) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _int8_arr __int8_arr)
   (setq _uint8_arr __uint8_arr)
   (setq _int32_arr __int32_arr)
   (setq _uint32_arr __uint32_arr)
   (setq _string_arr __string_arr)
   (setq _time_arr __time_arr)
   self)
  (:int8_arr
   (&optional __int8_arr)
   (if __int8_arr (setq _int8_arr __int8_arr)) _int8_arr)
  (:uint8_arr
   (&optional __uint8_arr)
   (if __uint8_arr (setq _uint8_arr __uint8_arr)) _uint8_arr)
  (:int32_arr
   (&optional __int32_arr)
   (if __int32_arr (setq _int32_arr __int32_arr)) _int32_arr)
  (:uint32_arr
   (&optional __uint32_arr)
   (if __uint32_arr (setq _uint32_arr __uint32_arr)) _uint32_arr)
  (:string_arr
   (&optional __string_arr)
   (if __string_arr (setq _string_arr __string_arr)) _string_arr)
  (:time_arr
   (&optional __time_arr)
   (if __time_arr (setq _time_arr __time_arr)) _time_arr)
  (:serialization-length
   ()
   (+
    ;; int8[] _int8_arr
    (* 1    (length _int8_arr)) 4
    ;; uint8[] _uint8_arr
    (* 1    (length _uint8_arr)) 4
    ;; int32[] _int32_arr
    (* 4    (length _int32_arr)) 4
    ;; uint32[] _uint32_arr
    (* 4    (length _uint32_arr)) 4
    ;; string[] _string_arr
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _string_arr)) 4
    ;; time[] _time_arr
    (* 8    (length _time_arr)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _int8_arr
     (write-long (length _int8_arr) s)
     (dotimes (i (length _int8_arr))
       (write-byte (elt _int8_arr i) s)
       )
     ;; uint8[] _uint8_arr
     (write-long (length _uint8_arr) s)
     (princ _uint8_arr s)
     ;; int32[] _int32_arr
     (write-long (length _int32_arr) s)
     (dotimes (i (length _int32_arr))
       (write-long (elt _int32_arr i) s)
       )
     ;; uint32[] _uint32_arr
     (write-long (length _uint32_arr) s)
     (dotimes (i (length _uint32_arr))
       (write-long (elt _uint32_arr i) s)
       )
     ;; string[] _string_arr
     (write-long (length _string_arr) s)
     (dolist (elem _string_arr)
       (write-long (length elem) s) (princ elem s)
       )
     ;; time[] _time_arr
     (write-long (length _time_arr) s)
     (dotimes (i (length _time_arr))
       (write-long (send (elt _time_arr i) :sec) s) (write-long (send (elt _time_arr i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _int8_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int8_arr (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _int8_arr i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _int8_arr i) 127) (setf (elt _int8_arr i) (- (elt _int8_arr i) 256)))
     ))
   ;; uint8[] _uint8_arr
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _uint8_arr (make-array n :element-type :char))
     (replace _uint8_arr buf :start2 ptr-) (incf ptr- n))
   ;; int32[] _int32_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int32_arr (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _int32_arr i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _uint32_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uint32_arr (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _uint32_arr i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _string_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _string_arr (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _string_arr i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; time[] _time_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_arr (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _time_arr)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get test_rosmaster::Arrays :md5sum-) "c5a1f18379b10bdd4df210944f6007a4")
(setf (get test_rosmaster::Arrays :datatype-) "test_rosmaster/Arrays")
(setf (get test_rosmaster::Arrays :definition-)
      "#for rostopic tests
int8[] int8_arr
uint8[] uint8_arr
int32[] int32_arr
uint32[] uint32_arr
string[] string_arr
time[] time_arr

")



(provide :test_rosmaster/Arrays "c5a1f18379b10bdd4df210944f6007a4")


