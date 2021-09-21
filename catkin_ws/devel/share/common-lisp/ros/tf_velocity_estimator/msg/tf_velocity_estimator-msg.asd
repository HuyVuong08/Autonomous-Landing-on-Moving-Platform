
(cl:in-package :asdf)

(defsystem "tf_velocity_estimator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "PosesAndVelocities" :depends-on ("_package_PosesAndVelocities"))
    (:file "_package_PosesAndVelocities" :depends-on ("_package"))
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
  ))