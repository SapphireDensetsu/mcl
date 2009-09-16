(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:Patches.h"
; at Sunday July 2,2006 7:23:13 pm.
; 
;      File:       CarbonCore/Patches.h
;  
;      Contains:   Patch Manager Interfaces.
;  
;      Version:    CarbonCore-545~1
;  
;      Copyright:  � 1994-2003 by Apple Computer, Inc., all rights reserved
;  
;      Bugs?:      For bug reports, consult the following page on
;                  the World Wide Web:
;  
;                      http://developer.apple.com/bugreporter/
;  
; 
; #ifndef __PATCHES__
; #define __PATCHES__
; #ifndef __MACTYPES__
#| #|
#include <CarbonCoreMacTypes.h>
#endif
|#
 |#

(require-interface "AvailabilityMacros")

; #if PRAGMA_ONCE
#| ; #pragma once
 |#

; #endif


; #if CALL_NOT_IN_CARBON
#| 
(defconstant $kOSTrapType 0)
(defconstant $kToolboxTrapType 1)

(def-mactype :TrapType (find-mactype ':SInt8))

(defconstant $OSTrap 0)                         ;  old name 

(defconstant $ToolTrap 1)                       ;  old name 

 |#

; #endif  /* CALL_NOT_IN_CARBON */

; 
;     GetTrapAddress and SetTrapAddress are obsolete and should not
;     be used. Always use NGetTrapAddress and NSetTrapAddress instead.
;     The old routines will not be supported for PowerPC apps.
; 
; 
;  *  NGetTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  NSetTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  GetOSTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  SetOSTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  GetToolTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  SetToolTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  GetToolboxTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  
; 
;  *  SetToolboxTrapAddress()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  

; #if TARGET_CPU_PPC
; 
;  *  GetTrapVector()
;  *  
;  *  Availability:
;  *    Mac OS X:         not available
;  *    CarbonLib:        not available
;  *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
;  

; #endif  /* TARGET_CPU_PPC */


; #endif /* __PATCHES__ */


(provide-interface "Patches")