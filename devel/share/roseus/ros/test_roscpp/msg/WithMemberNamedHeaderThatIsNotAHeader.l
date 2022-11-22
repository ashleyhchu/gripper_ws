;; Auto-generated. Do not edit!


(when (boundp 'test_roscpp::WithMemberNamedHeaderThatIsNotAHeader)
  (if (not (find-package "TEST_ROSCPP"))
    (make-package "TEST_ROSCPP"))
  (shadow 'WithMemberNamedHeaderThatIsNotAHeader (find-package "TEST_ROSCPP")))
(unless (find-package "TEST_ROSCPP::WITHMEMBERNAMEDHEADERTHATISNOTAHEADER")
  (make-package "TEST_ROSCPP::WITHMEMBERNAMEDHEADERTHATISNOTAHEADER"))

(in-package "ROS")
;;//! \htmlinclude WithMemberNamedHeaderThatIsNotAHeader.msg.html


(defclass test_roscpp::WithMemberNamedHeaderThatIsNotAHeader
  :super ros::object
  :slots (_header _a ))

(defmethod test_roscpp::WithMemberNamedHeaderThatIsNotAHeader
  (:init
   (&key
    ((:header __header) (instance test_roscpp::CustomHeader :init))
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _a (round __a))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; test_roscpp/CustomHeader _header
    (send _header :serialization-length)
    ;; uint32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_roscpp/CustomHeader _header
       (send _header :serialize s)
     ;; uint32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_roscpp/CustomHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roscpp::WithMemberNamedHeaderThatIsNotAHeader :md5sum-) "59a71bc6c7b0e5643fa9d213cdf4c63c")
(setf (get test_roscpp::WithMemberNamedHeaderThatIsNotAHeader :datatype-) "test_roscpp/WithMemberNamedHeaderThatIsNotAHeader")
(setf (get test_roscpp::WithMemberNamedHeaderThatIsNotAHeader :definition-)
      "CustomHeader header
uint32 a
================================================================================
MSG: test_roscpp/CustomHeader
uint32 a

")



(provide :test_roscpp/WithMemberNamedHeaderThatIsNotAHeader "59a71bc6c7b0e5643fa9d213cdf4c63c")


