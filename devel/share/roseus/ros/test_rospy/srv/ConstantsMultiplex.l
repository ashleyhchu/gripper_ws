;; Auto-generated. Do not edit!


(when (boundp 'test_rospy::ConstantsMultiplex)
  (if (not (find-package "TEST_ROSPY"))
    (make-package "TEST_ROSPY"))
  (shadow 'ConstantsMultiplex (find-package "TEST_ROSPY")))
(unless (find-package "TEST_ROSPY::CONSTANTSMULTIPLEX")
  (make-package "TEST_ROSPY::CONSTANTSMULTIPLEX"))
(unless (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST")
  (make-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(unless (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE")
  (make-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))

(in-package "ROS")





(intern "*BYTE_X*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*BYTE_X* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*BYTE_X* 0)
(intern "*BYTE_Y*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*BYTE_Y* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*BYTE_Y* 15)
(intern "*BYTE_Z*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*BYTE_Z* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*BYTE_Z* 5)
(intern "*INT32_X*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*INT32_X* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*INT32_X* 0)
(intern "*INT32_Y*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*INT32_Y* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*INT32_Y* -12345678)
(intern "*INT32_Z*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*INT32_Z* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*INT32_Z* 12345678)
(intern "*UINT32_X*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*UINT32_X* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*UINT32_X* 0)
(intern "*UINT32_Y*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*UINT32_Y* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*UINT32_Y* 12345678)
(intern "*UINT32_Z*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*UINT32_Z* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*UINT32_Z* 1)
(intern "*FLOAT32_X*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*FLOAT32_X* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*FLOAT32_X* 0.0)
(intern "*FLOAT32_Y*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*FLOAT32_Y* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*FLOAT32_Y* -3.14159)
(intern "*FLOAT32_Z*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*FLOAT32_Z* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*FLOAT32_Z* 12345.78)
(intern "*SELECT_X*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*SELECT_X* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*SELECT_X* 1)
(intern "*SELECT_Y*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*SELECT_Y* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*SELECT_Y* 2)
(intern "*SELECT_Z*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(shadow '*SELECT_Z* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXREQUEST"))
(defconstant test_rospy::ConstantsMultiplexRequest::*SELECT_Z* 3)
(defclass test_rospy::ConstantsMultiplexRequest
  :super ros::object
  :slots (_selection ))

(defmethod test_rospy::ConstantsMultiplexRequest
  (:init
   (&key
    ((:selection __selection) 0)
    )
   (send-super :init)
   (setq _selection (round __selection))
   self)
  (:selection
   (&optional __selection)
   (if __selection (setq _selection __selection)) _selection)
  (:serialization-length
   ()
   (+
    ;; byte _selection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _selection
       (write-byte _selection s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _selection
     (setq _selection (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _selection 127) (setq _selection (- _selection 256)))
   ;;
   self)
  )

(intern "*CONFIRM_X*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))
(shadow '*CONFIRM_X* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))
(defconstant test_rospy::ConstantsMultiplexResponse::*CONFIRM_X* 1)
(intern "*CONFIRM_Y*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))
(shadow '*CONFIRM_Y* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))
(defconstant test_rospy::ConstantsMultiplexResponse::*CONFIRM_Y* 2)
(intern "*CONFIRM_Z*" (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))
(shadow '*CONFIRM_Z* (find-package "TEST_ROSPY::CONSTANTSMULTIPLEXRESPONSE"))
(defconstant test_rospy::ConstantsMultiplexResponse::*CONFIRM_Z* 3)
(defclass test_rospy::ConstantsMultiplexResponse
  :super ros::object
  :slots (_select_confirm _ret_byte _ret_int32 _ret_uint32 _ret_float32 ))

(defmethod test_rospy::ConstantsMultiplexResponse
  (:init
   (&key
    ((:select_confirm __select_confirm) 0)
    ((:ret_byte __ret_byte) 0)
    ((:ret_int32 __ret_int32) 0)
    ((:ret_uint32 __ret_uint32) 0)
    ((:ret_float32 __ret_float32) 0.0)
    )
   (send-super :init)
   (setq _select_confirm (round __select_confirm))
   (setq _ret_byte (round __ret_byte))
   (setq _ret_int32 (round __ret_int32))
   (setq _ret_uint32 (round __ret_uint32))
   (setq _ret_float32 (float __ret_float32))
   self)
  (:select_confirm
   (&optional __select_confirm)
   (if __select_confirm (setq _select_confirm __select_confirm)) _select_confirm)
  (:ret_byte
   (&optional __ret_byte)
   (if __ret_byte (setq _ret_byte __ret_byte)) _ret_byte)
  (:ret_int32
   (&optional __ret_int32)
   (if __ret_int32 (setq _ret_int32 __ret_int32)) _ret_int32)
  (:ret_uint32
   (&optional __ret_uint32)
   (if __ret_uint32 (setq _ret_uint32 __ret_uint32)) _ret_uint32)
  (:ret_float32
   (&optional __ret_float32)
   (if __ret_float32 (setq _ret_float32 __ret_float32)) _ret_float32)
  (:serialization-length
   ()
   (+
    ;; byte _select_confirm
    1
    ;; byte _ret_byte
    1
    ;; int32 _ret_int32
    4
    ;; uint32 _ret_uint32
    4
    ;; float32 _ret_float32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _select_confirm
       (write-byte _select_confirm s)
     ;; byte _ret_byte
       (write-byte _ret_byte s)
     ;; int32 _ret_int32
       (write-long _ret_int32 s)
     ;; uint32 _ret_uint32
       (write-long _ret_uint32 s)
     ;; float32 _ret_float32
       (sys::poke _ret_float32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _select_confirm
     (setq _select_confirm (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _select_confirm 127) (setq _select_confirm (- _select_confirm 256)))
   ;; byte _ret_byte
     (setq _ret_byte (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ret_byte 127) (setq _ret_byte (- _ret_byte 256)))
   ;; int32 _ret_int32
     (setq _ret_int32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ret_uint32
     (setq _ret_uint32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _ret_float32
     (setq _ret_float32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_rospy::ConstantsMultiplex
  :super ros::object
  :slots ())

(setf (get test_rospy::ConstantsMultiplex :md5sum-) "bab86066b3f7801cb25df3932f644396")
(setf (get test_rospy::ConstantsMultiplex :datatype-) "test_rospy/ConstantsMultiplex")
(setf (get test_rospy::ConstantsMultiplex :request) test_rospy::ConstantsMultiplexRequest)
(setf (get test_rospy::ConstantsMultiplex :response) test_rospy::ConstantsMultiplexResponse)

(defmethod test_rospy::ConstantsMultiplexRequest
  (:response () (instance test_rospy::ConstantsMultiplexResponse :init)))

(setf (get test_rospy::ConstantsMultiplexRequest :md5sum-) "bab86066b3f7801cb25df3932f644396")
(setf (get test_rospy::ConstantsMultiplexRequest :datatype-) "test_rospy/ConstantsMultiplexRequest")
(setf (get test_rospy::ConstantsMultiplexRequest :definition-)
      "byte BYTE_X=0
byte BYTE_Y=15
byte BYTE_Z=5
int32 INT32_X=0
int32 INT32_Y=-12345678
int32 INT32_Z=12345678
uint32 UINT32_X=0
uint32 UINT32_Y=12345678
uint32 UINT32_Z=1
float32 FLOAT32_X=0.0
float32 FLOAT32_Y=-3.14159
float32 FLOAT32_Z=12345.78
byte SELECT_X=1
byte SELECT_Y=2
byte SELECT_Z=3
byte selection
---
# test response constants as well
byte CONFIRM_X=1
byte CONFIRM_Y=2
byte CONFIRM_Z=3
byte select_confirm
byte ret_byte
int32 ret_int32
uint32 ret_uint32
float32 ret_float32
")

(setf (get test_rospy::ConstantsMultiplexResponse :md5sum-) "bab86066b3f7801cb25df3932f644396")
(setf (get test_rospy::ConstantsMultiplexResponse :datatype-) "test_rospy/ConstantsMultiplexResponse")
(setf (get test_rospy::ConstantsMultiplexResponse :definition-)
      "byte BYTE_X=0
byte BYTE_Y=15
byte BYTE_Z=5
int32 INT32_X=0
int32 INT32_Y=-12345678
int32 INT32_Z=12345678
uint32 UINT32_X=0
uint32 UINT32_Y=12345678
uint32 UINT32_Z=1
float32 FLOAT32_X=0.0
float32 FLOAT32_Y=-3.14159
float32 FLOAT32_Z=12345.78
byte SELECT_X=1
byte SELECT_Y=2
byte SELECT_Z=3
byte selection
---
# test response constants as well
byte CONFIRM_X=1
byte CONFIRM_Y=2
byte CONFIRM_Z=3
byte select_confirm
byte ret_byte
int32 ret_int32
uint32 ret_uint32
float32 ret_float32
")



(provide :test_rospy/ConstantsMultiplex "bab86066b3f7801cb25df3932f644396")


