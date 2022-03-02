
(cl:in-package :asdf)

(defsystem "neato-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BumperEvent" :depends-on ("_package_BumperEvent"))
    (:file "_package_BumperEvent" :depends-on ("_package"))
    (:file "ButtonEvent" :depends-on ("_package_ButtonEvent"))
    (:file "_package_ButtonEvent" :depends-on ("_package"))
    (:file "Sensors" :depends-on ("_package_Sensors"))
    (:file "_package_Sensors" :depends-on ("_package"))
  ))