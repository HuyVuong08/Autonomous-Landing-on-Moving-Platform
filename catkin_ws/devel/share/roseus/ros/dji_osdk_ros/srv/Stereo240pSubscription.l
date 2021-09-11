;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::Stereo240pSubscription)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'Stereo240pSubscription (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::STEREO240PSUBSCRIPTION")
  (make-package "DJI_OSDK_ROS::STEREO240PSUBSCRIPTION"))
(unless (find-package "DJI_OSDK_ROS::STEREO240PSUBSCRIPTIONREQUEST")
  (make-package "DJI_OSDK_ROS::STEREO240PSUBSCRIPTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::STEREO240PSUBSCRIPTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::STEREO240PSUBSCRIPTIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::Stereo240pSubscriptionRequest
  :super ros::object
  :slots (_front_right_240p _front_left_240p _down_front_240p _down_back_240p _unsubscribe_240p ))

(defmethod dji_osdk_ros::Stereo240pSubscriptionRequest
  (:init
   (&key
    ((:front_right_240p __front_right_240p) 0)
    ((:front_left_240p __front_left_240p) 0)
    ((:down_front_240p __down_front_240p) 0)
    ((:down_back_240p __down_back_240p) 0)
    ((:unsubscribe_240p __unsubscribe_240p) 0)
    )
   (send-super :init)
   (setq _front_right_240p (round __front_right_240p))
   (setq _front_left_240p (round __front_left_240p))
   (setq _down_front_240p (round __down_front_240p))
   (setq _down_back_240p (round __down_back_240p))
   (setq _unsubscribe_240p (round __unsubscribe_240p))
   self)
  (:front_right_240p
   (&optional __front_right_240p)
   (if __front_right_240p (setq _front_right_240p __front_right_240p)) _front_right_240p)
  (:front_left_240p
   (&optional __front_left_240p)
   (if __front_left_240p (setq _front_left_240p __front_left_240p)) _front_left_240p)
  (:down_front_240p
   (&optional __down_front_240p)
   (if __down_front_240p (setq _down_front_240p __down_front_240p)) _down_front_240p)
  (:down_back_240p
   (&optional __down_back_240p)
   (if __down_back_240p (setq _down_back_240p __down_back_240p)) _down_back_240p)
  (:unsubscribe_240p
   (&optional __unsubscribe_240p)
   (if __unsubscribe_240p (setq _unsubscribe_240p __unsubscribe_240p)) _unsubscribe_240p)
  (:serialization-length
   ()
   (+
    ;; uint8 _front_right_240p
    1
    ;; uint8 _front_left_240p
    1
    ;; uint8 _down_front_240p
    1
    ;; uint8 _down_back_240p
    1
    ;; uint8 _unsubscribe_240p
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _front_right_240p
       (write-byte _front_right_240p s)
     ;; uint8 _front_left_240p
       (write-byte _front_left_240p s)
     ;; uint8 _down_front_240p
       (write-byte _down_front_240p s)
     ;; uint8 _down_back_240p
       (write-byte _down_back_240p s)
     ;; uint8 _unsubscribe_240p
       (write-byte _unsubscribe_240p s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _front_right_240p
     (setq _front_right_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_left_240p
     (setq _front_left_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _down_front_240p
     (setq _down_front_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _down_back_240p
     (setq _down_back_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unsubscribe_240p
     (setq _unsubscribe_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::Stereo240pSubscriptionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::Stereo240pSubscriptionResponse
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

(defclass dji_osdk_ros::Stereo240pSubscription
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::Stereo240pSubscription :md5sum-) "c1205f3b01904555b852bb2bc5881da0")
(setf (get dji_osdk_ros::Stereo240pSubscription :datatype-) "dji_osdk_ros/Stereo240pSubscription")
(setf (get dji_osdk_ros::Stereo240pSubscription :request) dji_osdk_ros::Stereo240pSubscriptionRequest)
(setf (get dji_osdk_ros::Stereo240pSubscription :response) dji_osdk_ros::Stereo240pSubscriptionResponse)

(defmethod dji_osdk_ros::Stereo240pSubscriptionRequest
  (:response () (instance dji_osdk_ros::Stereo240pSubscriptionResponse :init)))

(setf (get dji_osdk_ros::Stereo240pSubscriptionRequest :md5sum-) "c1205f3b01904555b852bb2bc5881da0")
(setf (get dji_osdk_ros::Stereo240pSubscriptionRequest :datatype-) "dji_osdk_ros/Stereo240pSubscriptionRequest")
(setf (get dji_osdk_ros::Stereo240pSubscriptionRequest :definition-)
      "# assign value to 1 to subscribe
uint8 front_right_240p
uint8 front_left_240p
uint8 down_front_240p
uint8 down_back_240p

# if unsubscribe_240p is 1,
# service will unsubscribe no matter what
uint8 unsubscribe_240p

---
bool result

")

(setf (get dji_osdk_ros::Stereo240pSubscriptionResponse :md5sum-) "c1205f3b01904555b852bb2bc5881da0")
(setf (get dji_osdk_ros::Stereo240pSubscriptionResponse :datatype-) "dji_osdk_ros/Stereo240pSubscriptionResponse")
(setf (get dji_osdk_ros::Stereo240pSubscriptionResponse :definition-)
      "# assign value to 1 to subscribe
uint8 front_right_240p
uint8 front_left_240p
uint8 down_front_240p
uint8 down_back_240p

# if unsubscribe_240p is 1,
# service will unsubscribe no matter what
uint8 unsubscribe_240p

---
bool result

")



(provide :dji_osdk_ros/Stereo240pSubscription "c1205f3b01904555b852bb2bc5881da0")


