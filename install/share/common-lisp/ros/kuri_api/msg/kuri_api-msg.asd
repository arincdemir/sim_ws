
(cl:in-package :asdf)

(defsystem "kuri_api-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Volume" :depends-on ("_package_Volume"))
    (:file "_package_Volume" :depends-on ("_package"))
    (:file "VolumeButton" :depends-on ("_package_VolumeButton"))
    (:file "_package_VolumeButton" :depends-on ("_package"))
  ))