ScriptName VPDT_Help

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "VPDT_Help.Show" 
Function Show() Global
  String message = "Cora is a completely stand alone companion based on the variant universe version of here combined with the hunter/emissary.\n" 
  message += "\n\nHow to use\n\n"
  message += "    To toggle debug mode and logging:\n\tCGF \"VPDT_Debug.ToggleDebugMode\"\n"
  message += "         Feature Flags Status Screen:\n\tCGF \"VPDT_Debug.FeatureFlags\"\n"

  ;; Fast Travel Helpers
  message += "Fast Travel To Selected Location:\n\tCGF \"VPDT_Debug.FastTravelLocations\"\n"

  ;; Foot notes
  message += "\n\nGoing to a world space you must come from an interior cell like the Interior Debug Cell."

  Debug.MessageBox(message)
EndFunction
