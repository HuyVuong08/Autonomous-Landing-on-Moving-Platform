;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::StereoDepthSubscription)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'StereoDepthSubscription (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::STEREODEPTHSUBSCRIPTION")
  (make-package "DJI_OSDK_ROS::STEREODEPTHSUBSCRIPTION"))
(unless (find-package "DJI_OSDK_ROS::STEREODEPTHSUBSCRIPTIONREQUEST")
  (make-package "DJI_OSDK_ROS::STEREODEPTHSUBSCRIPTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::STEREODEPTHSUBSCRIPTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::STEREODEPTHSUBSCRIPTIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::StereoDepthSubscriptionRequest
  :super ros::object
  :slots (_front_depth_240p _unsubscribe_240p ))

(defmethod dji_osdk_ros::StereoDepthSubscriptionRequest
  (:init
   (&key
    ((:front_depth_240p __front_depth_240p) 0)
    ((:unsubscribe_240p __unsubscribe_240p) 0)
    )
   (send-super :init)
   (setq _front_depth_240p (round __front_depth_240p))
   (setq _unsubscribe_240p (round __unsubscribe_240p))
   self)
  (:front_depth_240p
   (&optional __front_depth_240p)
   (if __front_depth_240p (setq _front_depth_240p __front_depth_240p)) _front_depth_240p)
  (:unsubscribe_240p
   (&optional __unsubscribe_240p)
   (if __unsubscribe_240p (setq _unsubscribe_240p __unsubscribe_240p)) _unsubscribe_240p)
  (:serialization-length
   ()
   (+
    ;; uint8 _front_depth_240p
    1
    ;; uint8 _unsubscribe_240p
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _front_depth_240p
       (write-byte _front_depth_240p s)
     ;; uint8 _unsubscribe_240p
       (write-byte _unsubscribe_240p s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _front_depth_240p
     (setq _front_depth_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unsubscribe_240p
     (setq _unsubscribe_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::StereoDepthSubscriptionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::StereoDepthSubscriptionResponse
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

(defclass dji_osdk_ros::StereoDepthSubscription
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::StereoDepthSubscription :md5sum-) "6da41f0fc9c34988dbd56e6a11bddfdf")
(setf (get dji_osdk_ros::StereoDepthSubscription :datatype-) "dji_osdk_ros/StereoDepthSubscription")
(setf (get dji_osdk_ros::StereoDepthSubscription :request) dji_osdk_ros::StereoDepthSubscriptionRequest)
(setf (get dji_osdk_ros::StereoDepthSubscription :response) dji_osdk_ros::StereoDepthSubscriptionResponse)

(defmethod dji_osdk_ros::StereoDepthSubscriptionRequest
  (:response () (instance dji_osdk_ros::StereoDepthSubscriptionResponse :init)))

(setf (get dji_osdk_ros::StereoDepthSubscriptionRequest :md5sum-) "6da41f0fc9c34988dbd56e6a11bddfdf")
(setf (get dji_osdk_ros::StereoDepthSubscriptionRequest :datatype-) "dji_osdk_ros/StereoDepthSubscriptionRequest")
(setf (get dji_osdk_ros::StereoDepthSubscriptionRequest :definition-)
      "# assign value to 1 to subscribe
uint8 front_depth_240p

# if unsubscribe_240p is 1,
# service will unsubscribe no matter what
uint8 unsubscribe_240p

---
bool result
")

(setf (get dji_osdk_ros::StereoDepthSubscriptionResponse :md5sum-) "6da41f0fc9c34988dbd56e6a11bddfdf")
(setf (get dji_osdk_ros::StereoDepthSubscriptionResponse :datatype-) "dji_osdk_ros/StereoDepthSubscriptionResponse")
(setf (get dji_osdk_ros::StereoDepthSubscriptionResponse :definition-)
      "# assign value to 1 to subscribe
uint8 front_depth_240p

# if unsubscribe_240p is 1,
# service will unsubscribe no matter what
uint8 unsubscribe_240p

---
bool result
")



(provide :dji_osdk_ros/StereoDepthSubscription "6da41f0fc9c34988dbd56e6a11bddfdf")


