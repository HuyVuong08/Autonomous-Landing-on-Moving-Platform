
(cl:in-package :asdf)

(defsystem "ped_traj_pred-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PathWithId" :depends-on ("_package_PathWithId"))
    (:file "_package_PathWithId" :depends-on ("_package"))
  ))