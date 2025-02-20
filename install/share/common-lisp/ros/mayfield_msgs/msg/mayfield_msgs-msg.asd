
(cl:in-package :asdf)

(defsystem "mayfield_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KeyValue" :depends-on ("_package_KeyValue"))
    (:file "_package_KeyValue" :depends-on ("_package"))
    (:file "KeyValueArray" :depends-on ("_package_KeyValueArray"))
    (:file "_package_KeyValueArray" :depends-on ("_package"))
    (:file "NodeStatus" :depends-on ("_package_NodeStatus"))
    (:file "_package_NodeStatus" :depends-on ("_package"))
  ))