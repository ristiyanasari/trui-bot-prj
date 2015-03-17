
(cl:in-package :asdf)

(defsystem "mavros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BatteryStatus" :depends-on ("_package_BatteryStatus"))
    (:file "_package_BatteryStatus" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
    (:file "RadioStatus" :depends-on ("_package_RadioStatus"))
    (:file "_package_RadioStatus" :depends-on ("_package"))
    (:file "RCOut" :depends-on ("_package_RCOut"))
    (:file "_package_RCOut" :depends-on ("_package"))
    (:file "OverrideRCIn" :depends-on ("_package_OverrideRCIn"))
    (:file "_package_OverrideRCIn" :depends-on ("_package"))
    (:file "VFR_HUD" :depends-on ("_package_VFR_HUD"))
    (:file "_package_VFR_HUD" :depends-on ("_package"))
    (:file "WaypointList" :depends-on ("_package_WaypointList"))
    (:file "_package_WaypointList" :depends-on ("_package"))
    (:file "Mavlink" :depends-on ("_package_Mavlink"))
    (:file "_package_Mavlink" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "RCIn" :depends-on ("_package_RCIn"))
    (:file "_package_RCIn" :depends-on ("_package"))
    (:file "FileEntry" :depends-on ("_package_FileEntry"))
    (:file "_package_FileEntry" :depends-on ("_package"))
  ))