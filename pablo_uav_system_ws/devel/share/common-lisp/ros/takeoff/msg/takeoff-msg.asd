
(cl:in-package :asdf)

(defsystem "takeoff-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GroundtruthAltitude" :depends-on ("_package_GroundtruthAltitude"))
    (:file "_package_GroundtruthAltitude" :depends-on ("_package"))
    (:file "GroundtruthAltitude" :depends-on ("_package_GroundtruthAltitude"))
    (:file "_package_GroundtruthAltitude" :depends-on ("_package"))
  ))