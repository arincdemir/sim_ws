
(cl:in-package :asdf)

(defsystem "audio_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :mayfield_msgs-msg
)
  :components ((:file "_package")
    (:file "Asleep" :depends-on ("_package_Asleep"))
    (:file "_package_Asleep" :depends-on ("_package"))
    (:file "Awake" :depends-on ("_package_Awake"))
    (:file "_package_Awake" :depends-on ("_package"))
    (:file "Deaf" :depends-on ("_package_Deaf"))
    (:file "_package_Deaf" :depends-on ("_package"))
    (:file "Exchange" :depends-on ("_package_Exchange"))
    (:file "_package_Exchange" :depends-on ("_package"))
    (:file "Field" :depends-on ("_package_Field"))
    (:file "_package_Field" :depends-on ("_package"))
    (:file "SoundHoundCommand" :depends-on ("_package_SoundHoundCommand"))
    (:file "_package_SoundHoundCommand" :depends-on ("_package"))
  ))