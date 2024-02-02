ScriptName VPDT_Debug

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "VPDT_Debug.FeatureFlags" 
Function FeatureFlags() Global
  GlobalVariable Venpi_DebugEnabled = Game.GetFormFromFile(0x00000800, "VenpiCore.esm") as GlobalVariable

  String message = "Current Feature Flag Settings (1-On, 0=Off)\n\n"
  message += "     Debug Mode = " + Venpi_DebugEnabled.GetValueInt() + "\n"

  Debug.MessageBox(message)
  Debug.Trace(message, 2)
EndFunction

;; Call using: CGF "VPDT_Debug.ToggleDebugMode" 
Function ToggleDebugMode() Global
  GlobalVariable Venpi_DebugEnabled = Game.GetFormFromFile(0x00000800, "VenpiCore.esm") as GlobalVariable
  If (Venpi_DebugEnabled == None)
    Debug.MessageBox("Failed to find Venpi_DebugEnabled global variable in VenpiCore.esm. Please contact Venpi for help.")
    Return
  Else
    If (Venpi_DebugEnabled.GetValueInt() == 0)
      Venpi_DebugEnabled.SetValueInt(1)
    Else
      Venpi_DebugEnabled.SetValueInt(0)
    EndIf
  EndIf
EndFunction


;; Call using: CGF "VPDT_Debug.FastTravelToDebugCell" 
Function FastTravelToDebugCell() Global
  Form VenpiDebugFT = Game.GetFormFromFile(0x00000801, "VenpiDebugTools.esm")
  If (VenpiDebugFT == None)
    Debug.MessageBox("Failed to find VenpiDebugFT global variable in VenpiDebugTools.esm. Please contact Venpi for help.")
    Return
  Else
    Game.FastTravel(VenpiDebugFT as ObjectReference)
  EndIf
EndFunction

;; Call using: CGF "VPDT_Debug.FastTravelToLodge" 
Function FastTravelToLodge() Global
  Form LodgeFT = Game.GetFormFromFile(0x000F93F0, "Starfield.esm")
  If (LodgeFT == None)
    Debug.MessageBox("Failed to find LodgeFT global variable in Starfield.esm. Please contact Venpi for help.")
    Return
  Else
    Game.FastTravel(LodgeFT as ObjectReference)
  EndIf
EndFunction

;; Call using: CGF "VPDT_Debug.FastTravelToDebugWorldSpace" 
Function FastTravelToDebugWorldSpace() Global
  Form DebugEntrance = Game.GetFormFromFile(0x00000853, "VenpiDebugTools.esm")
  If (DebugEntrance == None)
    Debug.MessageBox("Failed to find DebugEntrance global variable in VenpiDebugTools.esm. Please contact Venpi for help.")
    Return
  Else
    Game.FastTravel(DebugEntrance as ObjectReference)
  EndIf
EndFunction

;; Call using: CGF "VPDT_Debug.FastTravelLocations"
Function FastTravelLocations() Global
  FormList VPDT_FT_Destinations = Game.GetFormFromFile(0x00000856, "VenpiDebugTools.esm") as FormList
  If (VPDT_FT_Destinations == None)
    Debug.MessageBox("Failed to find VPDT_FT_Destinations FormList in VenpiDebugTools.esm. Please contact Venpi for help.")
    Return
  EndIf

  If (VPDT_FT_Destinations.GetSize() < 3)
    Debug.MessageBox("VPDT_FT_Destinations has less then 3 targets which is wrong. Please contact Venpi for help.")
    Return
  EndIf

  Message VPDT_FT_Titles = Game.GetFormFromFile(0x00000858, "VenpiDebugTools.esm") as Message
  If (VPDT_FT_Titles == None)
    Debug.MessageBox("Failed to find VPDT_FT_Titles Message in VenpiDebugTools.esm. Please contact Venpi for help.")
    Return
  EndIf

  Int ftTarget = VPDT_FT_Titles.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  Form targetForm = VPDT_FT_Destinations.GetAt(ftTarget)

  If (targetForm == None)
    Debug.MessageBox("Failed to find target location for button (" + ftTarget + ") in VPDT_FT_Destinations, which has " + VPDT_FT_Destinations.GetSize() + " targets in it.")
    Return
  EndIf

  Game.FastTravel(targetForm as ObjectReference)
EndFunction
