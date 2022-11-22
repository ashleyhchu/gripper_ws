;; Auto-generated. Do not edit!


(when (boundp 'droidspeak::DroidChat)
  (if (not (find-package "DROIDSPEAK"))
    (make-package "DROIDSPEAK"))
  (shadow 'DroidChat (find-package "DROIDSPEAK")))
(unless (find-package "DROIDSPEAK::DROIDCHAT")
  (make-package "DROIDSPEAK::DROIDCHAT"))

(in-package "ROS")
;;//! \htmlinclude DroidChat.msg.html


(defclass droidspeak::DroidChat
  :super ros::object
  :slots (_data _spaces ))

(defmethod droidspeak::DroidChat
  (:init
   (&key
    ((:data __data) "")
    ((:spaces __spaces) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _spaces __spaces)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:spaces
   (&optional __spaces)
   (if __spaces (setq _spaces __spaces)) _spaces)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; float32[] _spaces
    (* 4    (length _spaces)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; float32[] _spaces
     (write-long (length _spaces) s)
     (dotimes (i (length _spaces))
       (sys::poke (elt _spaces i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _spaces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _spaces (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _spaces i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get droidspeak::DroidChat :md5sum-) "14b3c1f13ca46764581966919c8bdd15")
(setf (get droidspeak::DroidChat :datatype-) "droidspeak/DroidChat")
(setf (get droidspeak::DroidChat :definition-)
      "string data
float32[] spaces

")



(provide :droidspeak/DroidChat "14b3c1f13ca46764581966919c8bdd15")


