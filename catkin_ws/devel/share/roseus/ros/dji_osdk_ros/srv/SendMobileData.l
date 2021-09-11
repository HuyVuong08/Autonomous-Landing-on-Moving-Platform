;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SendMobileData)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SendMobileData (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SENDMOBILEDATA")
  (make-package "DJI_OSDK_ROS::SENDMOBILEDATA"))
(unless (find-package "DJI_OSDK_ROS::SENDMOBILEDATAREQUEST")
  (make-package "DJI_OSDK_ROS::SENDMOBILEDATAREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SENDMOBILEDATARESPONSE")
  (make-package "DJI_OSDK_ROS::SENDMOBILEDATARESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SendMobileDataRequest
  :super ros::object
  :slots (_data ))

(defmethod dji_osdk_ros::SendMobileDataRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
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
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass dji_osdk_ros::SendMobileDataResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SendMobileDataResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SendMobileData
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SendMobileData :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_osdk_ros::SendMobileData :datatype-) "dji_osdk_ros/SendMobileData")
(setf (get dji_osdk_ros::SendMobileData :request) dji_osdk_ros::SendMobileDataRequest)
(setf (get dji_osdk_ros::SendMobileData :response) dji_osdk_ros::SendMobileDataResponse)

(defmethod dji_osdk_ros::SendMobileDataRequest
  (:response () (instance dji_osdk_ros::SendMobileDataResponse :init)))

(setf (get dji_osdk_ros::SendMobileDataRequest :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_osdk_ros::SendMobileDataRequest :datatype-) "dji_osdk_ros/SendMobileDataRequest")
(setf (get dji_osdk_ros::SendMobileDataRequest :definition-)
      "uint8[] data  #length(data) <= 100
---
bool result

")

(setf (get dji_osdk_ros::SendMobileDataResponse :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_osdk_ros::SendMobileDataResponse :datatype-) "dji_osdk_ros/SendMobileDataResponse")
(setf (get dji_osdk_ros::SendMobileDataResponse :definition-)
      "uint8[] data  #length(data) <= 100
---
bool result

")



(provide :dji_osdk_ros/SendMobileData "1c25dff3462ed6a8f6df1c148c7b6a1e")


