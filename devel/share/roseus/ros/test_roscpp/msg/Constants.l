;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::Constants)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'Constants (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::CONSTANTS")
  (make-package "TEST_ROSCPP::CONSTANTS"))

(in-package "ROS")
;;//! \htmlinclude Constants.msg.html


(intern "*A*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*A* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*A* 1)
(intern "*B*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*B* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*B* 2)
(intern "*C*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*C* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*C* 3)
(intern "*D*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*D* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*D* 4)
(intern "*E*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*E* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*E* 5)
(intern "*F*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*F* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*F* 6)
(intern "*G*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*G* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*G* 7)
(intern "*H*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*H* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*H* 8)
(intern "*FA*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*FA* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*FA* 1.5)
(intern "*FB*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*FB* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*FB* 40.9)
(intern "*STR*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*STR* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*STR* "hello there")
(intern "*STR2*" (find-package "TEST_ROSCPP::CONSTANTS"))
(shadow '*STR2* (find-package "TEST_ROSCPP::CONSTANTS"))
(defconstant test_roscpp::Constants::*STR2* "this string has \"quotes\" and \slashes\ in it")
(defclass test_roscpp::Constants
  :super ros::object
  :slots ())

(defmethod test_roscpp::Constants
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

(setf (get test_roscpp::Constants :md5sum-) "0032309c8dd2c569e0e0d0e75974e750")
(setf (get test_roscpp::Constants :datatype-) "test_roscpp/Constants")
(setf (get test_roscpp::Constants :definition-)
      "uint8 a = 1
int8 b = 2
uint16 c = 3
int16 d = 4
uint32 e = 5
int32 f = 6
uint64 g = 7
int64 h = 8
float32 fa = 1.5
float64 fb = 40.9
string str = hello there
string str2 = this string has \"quotes\" and \\slashes\\ in it
")



(provide :test_roscpp/Constants "0032309c8dd2c569e0e0d0e75974e750")


