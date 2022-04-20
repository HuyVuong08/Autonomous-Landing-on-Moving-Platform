;; Auto-generated. Do not edit!


(when (boundp 'robot_component_srvs::SetBool)
  (if (not (find-package "ROBOT_COMPONENT_SRVS"))
    (make-package "ROBOT_COMPONENT_SRVS"))
  (shadow 'SetBool (find-package "ROBOT_COMPONENT_SRVS")))
(unless (find-package "ROBOT_COMPONENT_SRVS::SETBOOL")
  (make-package "ROBOT_COMPONENT_SRVS::SETBOOL"))
(unless (find-package "ROBOT_COMPONENT_SRVS::SETBOOLREQUEST")
  (make-package "ROBOT_COMPONENT_SRVS::SETBOOLREQUEST"))
(unless (find-package "ROBOT_COMPONENT_SRVS::SETBOOLRESPONSE")
  (make-package "ROBOT_COMPONENT_SRVS::SETBOOLRESPONSE"))

(in-package "ROS")





(defclass robot_component_srvs::SetBoolRequest
  :super ros::object
  :slots (_data ))

(defmethod robot_component_srvs::SetBoolRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_component_srvs::SetBoolResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_component_srvs::SetBoolResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_component_srvs::SetBool
  :super ros::object
  :slots ())

(setf (get robot_component_srvs::SetBool :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get robot_component_srvs::SetBool :datatype-) "robot_component_srvs/SetBool")
(setf (get robot_component_srvs::SetBool :request) robot_component_srvs::SetBoolRequest)
(setf (get robot_component_srvs::SetBool :response) robot_component_srvs::SetBoolResponse)

(defmethod robot_component_srvs::SetBoolRequest
  (:response () (instance robot_component_srvs::SetBoolResponse :init)))

(setf (get robot_component_srvs::SetBoolRequest :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get robot_component_srvs::SetBoolRequest :datatype-) "robot_component_srvs/SetBoolRequest")
(setf (get robot_component_srvs::SetBoolRequest :definition-)
      "bool data # e.g. for hardware enabling / disabling
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages


")

(setf (get robot_component_srvs::SetBoolResponse :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get robot_component_srvs::SetBoolResponse :datatype-) "robot_component_srvs/SetBoolResponse")
(setf (get robot_component_srvs::SetBoolResponse :definition-)
      "bool data # e.g. for hardware enabling / disabling
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages


")



(provide :robot_component_srvs/SetBool "09fb03525b03e7ea1fd3992bafd87e16")


