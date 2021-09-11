;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SendPayloadData)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SendPayloadData (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SENDPAYLOADDATA")
  (make-package "DJI_OSDK_ROS::SENDPAYLOADDATA"))
(unless (find-package "DJI_OSDK_ROS::SENDPAYLOADDATAREQUEST")
  (make-package "DJI_OSDK_ROS::SENDPAYLOADDATAREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SENDPAYLOADDATARESPONSE")
  (make-package "DJI_OSDK_ROS::SENDPAYLOADDATARESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SendPayloadDataRequest
  :super ros::object
  :slots (_data ))

(defmethod dji_osdk_ros::SendPayloadDataRequest
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

(defclass dji_osdk_ros::SendPayloadDataResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SendPayloadDataResponse
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

(defclass dji_osdk_ros::SendPayloadData
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SendPayloadData :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_osdk_ros::SendPayloadData :datatype-) "dji_osdk_ros/SendPayloadData")
(setf (get dji_osdk_ros::SendPayloadData :request) dji_osdk_ros::SendPayloadDataRequest)
(setf (get dji_osdk_ros::SendPayloadData :response) dji_osdk_ros::SendPayloadDataResponse)

(defmethod dji_osdk_ros::SendPayloadDataRequest
  (:response () (instance dji_osdk_ros::SendPayloadDataResponse :init)))

(setf (get dji_osdk_ros::SendPayloadDataRequest :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_osdk_ros::SendPayloadDataRequest :datatype-) "dji_osdk_ros/SendPayloadDataRequest")
(setf (get dji_osdk_ros::SendPayloadDataRequest :definition-)
      "uint8[] data  #length(data) <= 255
---
bool result

")

(setf (get dji_osdk_ros::SendPayloadDataResponse :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_osdk_ros::SendPayloadDataResponse :datatype-) "dji_osdk_ros/SendPayloadDataResponse")
(setf (get dji_osdk_ros::SendPayloadDataResponse :definition-)
      "uint8[] data  #length(data) <= 255
---
bool result

")



(provide :dji_osdk_ros/SendPayloadData "1c25dff3462ed6a8f6df1c148c7b6a1e")


