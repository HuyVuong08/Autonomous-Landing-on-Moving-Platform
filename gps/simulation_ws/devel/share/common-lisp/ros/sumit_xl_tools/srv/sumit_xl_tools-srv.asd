
(cl:in-package :asdf)

(defsystem "sumit_xl_tools-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SumitXLPose" :depends-on ("_package_SumitXLPose"))
    (:file "_package_SumitXLPose" :depends-on ("_package"))
  ))