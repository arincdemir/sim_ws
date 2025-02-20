
(cl:in-package :asdf)

(defsystem "may_nav_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :may_nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetCostMap" :depends-on ("_package_GetCostMap"))
    (:file "_package_GetCostMap" :depends-on ("_package"))
    (:file "GetObstacleDist" :depends-on ("_package_GetObstacleDist"))
    (:file "_package_GetObstacleDist" :depends-on ("_package"))
  ))