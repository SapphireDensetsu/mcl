(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:IOHIDevice.h"
; at Sunday July 2,2006 7:29:19 pm.
; 
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * Copyright (c) 1999-2003 Apple Computer, Inc.  All Rights Reserved.
;  * 
;  * This file contains Original Code and/or Modifications of Original Code
;  * as defined in and that are subject to the Apple Public Source License
;  * Version 2.0 (the 'License'). You may not use this file except in
;  * compliance with the License. Please obtain a copy of the License at
;  * http://www.opensource.apple.com/apsl/ and read it before using this
;  * file.
;  * 
;  * The Original Code and all software distributed under the License are
;  * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
;  * Please see the License for the specific language governing rights and
;  * limitations under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
;  	Copyright (c) 1992 NeXT Computer, Inc.  All rights reserved. 
;  *
;  * IOHIDevice.h - Common Event Source object class.
;  *
;  * HISTORY
;  * 22 May 1992    Mike Paquette at NeXT
;  *      Created. 
;  * 4  Aug 1993	  Erik Kay at NeXT
;  *	API cleanup
;  * 5  Aug 1993	  Erik Kay at NeXT
;  *	added ivar space for future expansion
;  
; #ifndef _IOHIDEVICE_H
; #define _IOHIDEVICE_H

(require-interface "IOKit/IOService")

(require-interface "IOKit/IOLocks")

(defconstant $kHIUnknownDevice 0)
(defconstant $kHIKeyboardDevice 1)
(defconstant $kHIRelativePointingDevice 2)
(def-mactype :IOHIDKind (find-mactype ':SINT32))
#|
 confused about CLASS IOHIDevice #\: public IOService #\{ OSDeclareDefaultStructors #\( IOHIDevice #\) #\; public #\: virtual bool init #\( OSDictionary * properties = 0 #\) #\; virtual void free #\( #\) #\; virtual bool open #\( IOService * forClient #\, IOOptionBits options = 0 #\, void * arg = 0 #\) #\; virtual UInt32 deviceType #\( #\) #\; virtual IOHIDKind hidKind #\( #\) #\; virtual UInt32 interfaceID #\( #\) #\; virtual bool updateProperties #\( void #\) #\; virtual IOReturn setParamProperties #\( OSDictionary * dict #\) #\; virtual UInt64 getGUID #\( #\) #\;
|#

; #endif /* !_IOHIDEVICE_H */


(provide-interface "IOHIDevice")