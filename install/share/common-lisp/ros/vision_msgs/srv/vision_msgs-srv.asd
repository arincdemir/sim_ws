
(cl:in-package :asdf)

(defsystem "vision_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mayfield_msgs-msg
               :vision_msgs-msg
)
  :components ((:file "_package")
    (:file "VisionActiveModules" :depends-on ("_package_VisionActiveModules"))
    (:file "_package_VisionActiveModules" :depends-on ("_package"))
    (:file "VisionCmds" :depends-on ("_package_VisionCmds"))
    (:file "_package_VisionCmds" :depends-on ("_package"))
    (:file "VisionQuery" :depends-on ("_package_VisionQuery"))
    (:file "_package_VisionQuery" :depends-on ("_package"))
  ))