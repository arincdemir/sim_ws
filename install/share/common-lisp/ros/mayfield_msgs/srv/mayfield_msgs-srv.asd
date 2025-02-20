
(cl:in-package :asdf)

(defsystem "mayfield_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
    (:file "StringExchange" :depends-on ("_package_StringExchange"))
    (:file "_package_StringExchange" :depends-on ("_package"))
  ))