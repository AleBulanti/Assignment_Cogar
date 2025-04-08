
(cl:in-package :asdf)

(defsystem "assignments-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CheckJointState" :depends-on ("_package_CheckJointState"))
    (:file "_package_CheckJointState" :depends-on ("_package"))
    (:file "InterpreterCommand" :depends-on ("_package_InterpreterCommand"))
    (:file "_package_InterpreterCommand" :depends-on ("_package"))
    (:file "MissionStatus" :depends-on ("_package_MissionStatus"))
    (:file "_package_MissionStatus" :depends-on ("_package"))
    (:file "Notifications" :depends-on ("_package_Notifications"))
    (:file "_package_Notifications" :depends-on ("_package"))
    (:file "ResolveConflict" :depends-on ("_package_ResolveConflict"))
    (:file "_package_ResolveConflict" :depends-on ("_package"))
    (:file "RiskEvaluation" :depends-on ("_package_RiskEvaluation"))
    (:file "_package_RiskEvaluation" :depends-on ("_package"))
    (:file "VictimReport" :depends-on ("_package_VictimReport"))
    (:file "_package_VictimReport" :depends-on ("_package"))
  ))