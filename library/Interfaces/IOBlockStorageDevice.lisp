(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:IOBlockStorageDevice.h"
; at Sunday July 2,2006 7:28:20 pm.
; 
;  * Copyright (c) 1998-2003 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
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
; !
;  * @header IOBlockStorageDevice
;  * @abstract
;  * This header contains the IOBlockStorageDevice class definition.
;  
; #ifndef _IOBLOCKSTORAGEDEVICE_H
; #define _IOBLOCKSTORAGEDEVICE_H

(require-interface "IOKit/IOTypes")
; !
;  * @defined kIOBlockStorageDeviceClass
;  * @abstract
;  * The name of the IOBlockStorageDevice class.
;  
(defconstant $kIOBlockStorageDeviceClass "IOBlockStorageDevice")
; #define kIOBlockStorageDeviceClass "IOBlockStorageDevice"
; !
;  * @defined kIOBlockStorageDeviceWriteCacheStateKey
;  * @abstract
;  * The name of the property used to get or set the write cache state of the
;  * block storage device.
;  
(defconstant $kIOBlockStorageDeviceWriteCacheStateKey "WriteCacheState")
; #define kIOBlockStorageDeviceWriteCacheStateKey	"WriteCacheState"

; #endif /* !_IOBLOCKSTORAGEDEVICE_H */


(provide-interface "IOBlockStorageDevice")