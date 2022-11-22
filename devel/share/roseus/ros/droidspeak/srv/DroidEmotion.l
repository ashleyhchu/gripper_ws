;; Auto-generated. Do not edit!


(when (boundp 'droidspeak::DroidEmotion)
  (if (not (find-package "DROIDSPEAK"))
    (make-package "DROIDSPEAK"))
  (shadow 'DroidEmotion (find-package "DROIDSPEAK")))
(unless (find-package "DROIDSPEAK::DROIDEMOTION")
  (make-package "DROIDSPEAK::DROIDEMOTION"))
(unless (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST")
  (make-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(unless (find-package "DROIDSPEAK::DROIDEMOTIONRESPONSE")
  (make-package "DROIDSPEAK::DROIDEMOTIONRESPONSE"))

(in-package "ROS")





(intern "*NORMAL*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*NORMAL* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*NORMAL* 0)
(intern "*HAPPY*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*HAPPY* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*HAPPY* 1)
(intern "*SORRY*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*SORRY* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*SORRY* 2)
(intern "*ANGRY*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*ANGRY* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*ANGRY* 3)
(intern "*JADED*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*JADED* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*JADED* 4)
(intern "*LOOK_LEFT*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*LOOK_LEFT* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*LOOK_LEFT* 5)
(intern "*LOOK_RIGHT*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*LOOK_RIGHT* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*LOOK_RIGHT* 6)
(intern "*LOOK_UP*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*LOOK_UP* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*LOOK_UP* 7)
(intern "*LOOK_DOWN*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*LOOK_DOWN* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*LOOK_DOWN* 8)
(intern "*BLINK*" (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(shadow '*BLINK* (find-package "DROIDSPEAK::DROIDEMOTIONREQUEST"))
(defconstant droidspeak::DroidEmotionRequest::*BLINK* 9)
(defclass droidspeak::DroidEmotionRequest
  :super ros::object
  :slots (_emotion _duration ))

(defmethod droidspeak::DroidEmotionRequest
  (:init
   (&key
    ((:emotion __emotion) 0)
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _emotion (round __emotion))
   (setq _duration __duration)
   self)
  (:emotion
   (&optional __emotion)
   (if __emotion (setq _emotion __emotion)) _emotion)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint8 _emotion
    1
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _emotion
       (write-byte _emotion s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _emotion
     (setq _emotion (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass droidspeak::DroidEmotionResponse
  :super ros::object
  :slots ())

(defmethod droidspeak::DroidEmotionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass droidspeak::DroidEmotion
  :super ros::object
  :slots ())

(setf (get droidspeak::DroidEmotion :md5sum-) "3121217addb14943825726ec606b461f")
(setf (get droidspeak::DroidEmotion :datatype-) "droidspeak/DroidEmotion")
(setf (get droidspeak::DroidEmotion :request) droidspeak::DroidEmotionRequest)
(setf (get droidspeak::DroidEmotion :response) droidspeak::DroidEmotionResponse)

(defmethod droidspeak::DroidEmotionRequest
  (:response () (instance droidspeak::DroidEmotionResponse :init)))

(setf (get droidspeak::DroidEmotionRequest :md5sum-) "3121217addb14943825726ec606b461f")
(setf (get droidspeak::DroidEmotionRequest :datatype-) "droidspeak/DroidEmotionRequest")
(setf (get droidspeak::DroidEmotionRequest :definition-)
      "uint8 NORMAL=0
uint8 HAPPY=1
uint8 SORRY=2
uint8 ANGRY=3
uint8 JADED=4
uint8 LOOK_LEFT=5
uint8 LOOK_RIGHT=6
uint8 LOOK_UP=7
uint8 LOOK_DOWN=8
uint8 BLINK=9

uint8 emotion
duration duration
---

")

(setf (get droidspeak::DroidEmotionResponse :md5sum-) "3121217addb14943825726ec606b461f")
(setf (get droidspeak::DroidEmotionResponse :datatype-) "droidspeak/DroidEmotionResponse")
(setf (get droidspeak::DroidEmotionResponse :definition-)
      "uint8 NORMAL=0
uint8 HAPPY=1
uint8 SORRY=2
uint8 ANGRY=3
uint8 JADED=4
uint8 LOOK_LEFT=5
uint8 LOOK_RIGHT=6
uint8 LOOK_UP=7
uint8 LOOK_DOWN=8
uint8 BLINK=9

uint8 emotion
duration duration
---

")



(provide :droidspeak/DroidEmotion "3121217addb14943825726ec606b461f")


