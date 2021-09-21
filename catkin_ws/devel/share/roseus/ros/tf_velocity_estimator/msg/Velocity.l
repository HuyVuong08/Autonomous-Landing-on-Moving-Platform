;; Auto-generated. Do not edit!


(when (boundp 'tf_velocity_estimator::Velocity)
  (if (not (find-package "TF_VELOCITY_ESTIMATOR"))
    (make-package "TF_VELOCITY_ESTIMATOR"))
  (shadow 'Velocity (find-package "TF_VELOCITY_ESTIMATOR")))
(unless (find-package "TF_VELOCITY_ESTIMATOR::VELOCITY")
  (make-package "TF_VELOCITY_ESTIMATOR::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html


(defclass tf_velocity_estimator::Velocity
  :super ros::object
  :slots (_vx _vy _vz ))

(defmethod tf_velocity_estimator::Velocity
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:serialization-length
   ()
   (+
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tf_velocity_estimator::Velocity :md5sum-) "ac272c003bd99cf28cdbf4d88ce75837")
(setf (get tf_velocity_estimator::Velocity :datatype-) "tf_velocity_estimator/Velocity")
(setf (get tf_velocity_estimator::Velocity :definition-)
      "float32 vx
float32 vy
float32 vz
")



(provide :tf_velocity_estimator/Velocity "ac272c003bd99cf28cdbf4d88ce75837")


