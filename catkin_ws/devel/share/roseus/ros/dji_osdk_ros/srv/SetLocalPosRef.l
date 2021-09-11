;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetLocalPosRef)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetLocalPosRef (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETLOCALPOSREF")
  (make-package "DJI_OSDK_ROS::SETLOCALPOSREF"))
(unless (find-package "DJI_OSDK_ROS::SETLOCALPOSREFREQUEST")
  (make-package "DJI_OSDK_ROS::SETLOCALPOSREFREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETLOCALPOSREFRESPONSE")
  (make-package "DJI_OSDK_ROS::SETLOCALPOSREFRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetLocalPosRefRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::SetLocalPosRefRequest
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

(defclass dji_osdk_ros::SetLocalPosRefResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetLocalPosRefResponse
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

(defclass dji_osdk_ros::SetLocalPosRef
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetLocalPosRef :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::SetLocalPosRef :datatype-) "dji_osdk_ros/SetLocalPosRef")
(setf (get dji_osdk_ros::SetLocalPosRef :request) dji_osdk_ros::SetLocalPosRefRequest)
(setf (get dji_osdk_ros::SetLocalPosRef :response) dji_osdk_ros::SetLocalPosRefResponse)

(defmethod dji_osdk_ros::SetLocalPosRefRequest
  (:response () (instance dji_osdk_ros::SetLocalPosRefResponse :init)))

(setf (get dji_osdk_ros::SetLocalPosRefRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::SetLocalPosRefRequest :datatype-) "dji_osdk_ros/SetLocalPosRefRequest")
(setf (get dji_osdk_ros::SetLocalPosRefRequest :definition-)
      "#set local position
# true: set Local position reference

#request
---
bool result

")

(setf (get dji_osdk_ros::SetLocalPosRefResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::SetLocalPosRefResponse :datatype-) "dji_osdk_ros/SetLocalPosRefResponse")
(setf (get dji_osdk_ros::SetLocalPosRefResponse :definition-)
      "#set local position
# true: set Local position reference

#request
---
bool result

")



(provide :dji_osdk_ros/SetLocalPosRef "eb13ac1f1354ccecb7941ee8fa2192e8")


