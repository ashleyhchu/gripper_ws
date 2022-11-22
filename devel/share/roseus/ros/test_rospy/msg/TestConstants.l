;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::TestConstants)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'TestConstants (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::TESTCONSTANTS")
  (make-package "TEST_ROSPY::TESTCONSTANTS"))

(in-package "ROS")
;;//! \htmlinclude TestConstants.msg.html


(intern "*A*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*A* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*A* -123.0)
(intern "*B*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*B* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*B* 124.0)
(intern "*C*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*C* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*C* 125.0)
(intern "*X*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*X* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*X* 123)
(intern "*Y*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*Y* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*Y* -123)
(intern "*Z*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*Z* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*Z* 124)
(intern "*FOO*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*FOO* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*FOO* "foo")
(intern "*SINGLEQUOTE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*SINGLEQUOTE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*SINGLEQUOTE* "'hi")
(intern "*DOUBLEQUOTE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*DOUBLEQUOTE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*DOUBLEQUOTE* "\"hello\" there")
(intern "*MULTIQUOTE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*MULTIQUOTE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*MULTIQUOTE* "\"hello\" 'goodbye'")
(intern "*EXAMPLE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*EXAMPLE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*EXAMPLE* "\"#comments\" are ignored, and leading and trailing whitespace removed")
(intern "*WHITESPACE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*WHITESPACE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*WHITESPACE* "strip")
(intern "*EMPTY*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*EMPTY* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*EMPTY* "")
(intern "*TRUE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*TRUE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*TRUE* nil)
(intern "*FALSE*" (find-package "TEST_ROSPY::TESTCONSTANTS"))
(shadow '*FALSE* (find-package "TEST_ROSPY::TESTCONSTANTS"))
(defconstant test_rospy::TestConstants::*FALSE* nil)
(defclass test_rospy::TestConstants
  :super ros::object
  :slots ())

(defmethod test_rospy::TestConstants
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

(setf (get test_rospy::TestConstants :md5sum-) "e60959d2ccf9718dc5e42767bebd1644")
(setf (get test_rospy::TestConstants :datatype-) "test_rospy/TestConstants")
(setf (get test_rospy::TestConstants :definition-)
      "float32 A=-123.0
float32 B=124.0
float64 C=125.0
int32 X=123
int32 Y=-123
uint32 Z=124
string FOO=foo
string SINGLEQUOTE='hi
string DOUBLEQUOTE=\"hello\" there
string MULTIQUOTE=\"hello\" 'goodbye'
string EXAMPLE=\"#comments\" are ignored, and leading and trailing whitespace removed
string WHITESPACE= strip  
string EMPTY= 
bool TRUE=1
bool FALSE=0
")



(provide :test_rospy/TestConstants "e60959d2ccf9718dc5e42767bebd1644")


