;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::QueryDroneVersion)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'QueryDroneVersion (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::QUERYDRONEVERSION")
  (make-package "DJI_OSDK_ROS::QUERYDRONEVERSION"))
(unless (find-package "DJI_OSDK_ROS::QUERYDRONEVERSIONREQUEST")
  (make-package "DJI_OSDK_ROS::QUERYDRONEVERSIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::QUERYDRONEVERSIONRESPONSE")
  (make-package "DJI_OSDK_ROS::QUERYDRONEVERSIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::QueryDroneVersionRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::QueryDroneVersionRequest
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

(defclass dji_osdk_ros::QueryDroneVersionResponse
  :super ros::object
  :slots (_version _hardware ))

(defmethod dji_osdk_ros::QueryDroneVersionResponse
  (:init
   (&key
    ((:version __version) 0)
    ((:hardware __hardware) "")
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _hardware (string __hardware))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:hardware
   (&optional __hardware)
   (if __hardware (setq _hardware __hardware)) _hardware)
  (:serialization-length
   ()
   (+
    ;; uint32 _version
    4
    ;; string _hardware
    4 (length _hardware)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _version
       (write-long _version s)
     ;; string _hardware
       (write-long (length _hardware) s) (princ _hardware s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _version
     (setq _version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _hardware
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dji_osdk_ros::QueryDroneVersion
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::QueryDroneVersion :md5sum-) "89b6e8d274e31334cc3a372757607be2")
(setf (get dji_osdk_ros::QueryDroneVersion :datatype-) "dji_osdk_ros/QueryDroneVersion")
(setf (get dji_osdk_ros::QueryDroneVersion :request) dji_osdk_ros::QueryDroneVersionRequest)
(setf (get dji_osdk_ros::QueryDroneVersion :response) dji_osdk_ros::QueryDroneVersionResponse)

(defmethod dji_osdk_ros::QueryDroneVersionRequest
  (:response () (instance dji_osdk_ros::QueryDroneVersionResponse :init)))

(setf (get dji_osdk_ros::QueryDroneVersionRequest :md5sum-) "89b6e8d274e31334cc3a372757607be2")
(setf (get dji_osdk_ros::QueryDroneVersionRequest :datatype-) "dji_osdk_ros/QueryDroneVersionRequest")
(setf (get dji_osdk_ros::QueryDroneVersionRequest :definition-)
      "---
uint32 version
string hardware
")

(setf (get dji_osdk_ros::QueryDroneVersionResponse :md5sum-) "89b6e8d274e31334cc3a372757607be2")
(setf (get dji_osdk_ros::QueryDroneVersionResponse :datatype-) "dji_osdk_ros/QueryDroneVersionResponse")
(setf (get dji_osdk_ros::QueryDroneVersionResponse :definition-)
      "---
uint32 version
string hardware
")



(provide :dji_osdk_ros/QueryDroneVersion "89b6e8d274e31334cc3a372757607be2")


