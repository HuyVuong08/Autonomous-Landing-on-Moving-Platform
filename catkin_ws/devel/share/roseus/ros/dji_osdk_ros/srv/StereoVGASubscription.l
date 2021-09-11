;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::StereoVGASubscription)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'StereoVGASubscription (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTION")
  (make-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTION"))
(unless (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONREQUEST")
  (make-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONRESPONSE"))

(in-package "ROS")





(intern "*VGA_20_HZ*" (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONREQUEST"))
(shadow '*VGA_20_HZ* (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONREQUEST"))
(defconstant dji_osdk_ros::StereoVGASubscriptionRequest::*VGA_20_HZ* 0)
(intern "*VGA_10_HZ*" (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONREQUEST"))
(shadow '*VGA_10_HZ* (find-package "DJI_OSDK_ROS::STEREOVGASUBSCRIPTIONREQUEST"))
(defconstant dji_osdk_ros::StereoVGASubscriptionRequest::*VGA_10_HZ* 1)

(defun dji_osdk_ros::StereoVGASubscriptionRequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::StereoVGASubscriptionRequest::*VGA_20_HZ*)
        ((= const 1) 'dji_osdk_ros::StereoVGASubscriptionRequest::*VGA_10_HZ*)
        (t nil)))

(defclass dji_osdk_ros::StereoVGASubscriptionRequest
  :super ros::object
  :slots (_vga_freq _front_vga _unsubscribe_vga ))

(defmethod dji_osdk_ros::StereoVGASubscriptionRequest
  (:init
   (&key
    ((:vga_freq __vga_freq) 0)
    ((:front_vga __front_vga) 0)
    ((:unsubscribe_vga __unsubscribe_vga) 0)
    )
   (send-super :init)
   (setq _vga_freq (round __vga_freq))
   (setq _front_vga (round __front_vga))
   (setq _unsubscribe_vga (round __unsubscribe_vga))
   self)
  (:vga_freq
   (&optional __vga_freq)
   (if __vga_freq (setq _vga_freq __vga_freq)) _vga_freq)
  (:front_vga
   (&optional __front_vga)
   (if __front_vga (setq _front_vga __front_vga)) _front_vga)
  (:unsubscribe_vga
   (&optional __unsubscribe_vga)
   (if __unsubscribe_vga (setq _unsubscribe_vga __unsubscribe_vga)) _unsubscribe_vga)
  (:serialization-length
   ()
   (+
    ;; uint8 _vga_freq
    1
    ;; uint8 _front_vga
    1
    ;; uint8 _unsubscribe_vga
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vga_freq
       (write-byte _vga_freq s)
     ;; uint8 _front_vga
       (write-byte _front_vga s)
     ;; uint8 _unsubscribe_vga
       (write-byte _unsubscribe_vga s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vga_freq
     (setq _vga_freq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_vga
     (setq _front_vga (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unsubscribe_vga
     (setq _unsubscribe_vga (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::StereoVGASubscriptionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::StereoVGASubscriptionResponse
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

(defclass dji_osdk_ros::StereoVGASubscription
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::StereoVGASubscription :md5sum-) "a636307470f5a4e2ecf4fbcb4aeca4ed")
(setf (get dji_osdk_ros::StereoVGASubscription :datatype-) "dji_osdk_ros/StereoVGASubscription")
(setf (get dji_osdk_ros::StereoVGASubscription :request) dji_osdk_ros::StereoVGASubscriptionRequest)
(setf (get dji_osdk_ros::StereoVGASubscription :response) dji_osdk_ros::StereoVGASubscriptionResponse)

(defmethod dji_osdk_ros::StereoVGASubscriptionRequest
  (:response () (instance dji_osdk_ros::StereoVGASubscriptionResponse :init)))

(setf (get dji_osdk_ros::StereoVGASubscriptionRequest :md5sum-) "a636307470f5a4e2ecf4fbcb4aeca4ed")
(setf (get dji_osdk_ros::StereoVGASubscriptionRequest :datatype-) "dji_osdk_ros/StereoVGASubscriptionRequest")
(setf (get dji_osdk_ros::StereoVGASubscriptionRequest :definition-)
      "#constant for vga image frequency
uint8 VGA_20_HZ = 0
uint8 VGA_10_HZ = 1

# use above constants to config freq.
uint8 vga_freq

# assign value to 1 to subscribe
uint8 front_vga

# if unsubscribe_vga is 1,
# service will unsubscribe no matter what
uint8 unsubscribe_vga

---
bool result
")

(setf (get dji_osdk_ros::StereoVGASubscriptionResponse :md5sum-) "a636307470f5a4e2ecf4fbcb4aeca4ed")
(setf (get dji_osdk_ros::StereoVGASubscriptionResponse :datatype-) "dji_osdk_ros/StereoVGASubscriptionResponse")
(setf (get dji_osdk_ros::StereoVGASubscriptionResponse :definition-)
      "#constant for vga image frequency
uint8 VGA_20_HZ = 0
uint8 VGA_10_HZ = 1

# use above constants to config freq.
uint8 vga_freq

# assign value to 1 to subscribe
uint8 front_vga

# if unsubscribe_vga is 1,
# service will unsubscribe no matter what
uint8 unsubscribe_vga

---
bool result
")



(provide :dji_osdk_ros/StereoVGASubscription "a636307470f5a4e2ecf4fbcb4aeca4ed")


