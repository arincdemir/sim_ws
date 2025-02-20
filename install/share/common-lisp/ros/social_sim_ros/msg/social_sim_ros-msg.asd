
(cl:in-package :asdf)

(defsystem "social_sim_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Agent" :depends-on ("_package_Agent"))
    (:file "_package_Agent" :depends-on ("_package"))
    (:file "AgentArray" :depends-on ("_package_AgentArray"))
    (:file "_package_AgentArray" :depends-on ("_package"))
    (:file "PersonEntry" :depends-on ("_package_PersonEntry"))
    (:file "_package_PersonEntry" :depends-on ("_package"))
    (:file "PersonEntryArray" :depends-on ("_package_PersonEntryArray"))
    (:file "_package_PersonEntryArray" :depends-on ("_package"))
    (:file "RealDepthImage" :depends-on ("_package_RealDepthImage"))
    (:file "_package_RealDepthImage" :depends-on ("_package"))
    (:file "SceneInfo" :depends-on ("_package_SceneInfo"))
    (:file "_package_SceneInfo" :depends-on ("_package"))
    (:file "TrialInfo" :depends-on ("_package_TrialInfo"))
    (:file "_package_TrialInfo" :depends-on ("_package"))
    (:file "TrialStart" :depends-on ("_package_TrialStart"))
    (:file "_package_TrialStart" :depends-on ("_package"))
  ))