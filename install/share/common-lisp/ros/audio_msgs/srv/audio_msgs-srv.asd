
(cl:in-package :asdf)

(defsystem "audio_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :audio_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Deafen" :depends-on ("_package_Deafen"))
    (:file "_package_Deafen" :depends-on ("_package"))
    (:file "GetDirection" :depends-on ("_package_GetDirection"))
    (:file "_package_GetDirection" :depends-on ("_package"))
    (:file "GetField" :depends-on ("_package_GetField"))
    (:file "_package_GetField" :depends-on ("_package"))
    (:file "ListFields" :depends-on ("_package_ListFields"))
    (:file "_package_ListFields" :depends-on ("_package"))
    (:file "SetField" :depends-on ("_package_SetField"))
    (:file "_package_SetField" :depends-on ("_package"))
    (:file "Snooze" :depends-on ("_package_Snooze"))
    (:file "_package_Snooze" :depends-on ("_package"))
    (:file "Stat" :depends-on ("_package_Stat"))
    (:file "_package_Stat" :depends-on ("_package"))
    (:file "WakeUp" :depends-on ("_package_WakeUp"))
    (:file "_package_WakeUp" :depends-on ("_package"))
  ))