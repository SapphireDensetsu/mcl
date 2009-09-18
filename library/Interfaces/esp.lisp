(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:esp.h"
; at Sunday July 2,2006 7:27:45 pm.
; 	$FreeBSD: src/sys/netinet6/esp.h,v 1.2.2.2 2001/07/03 11:01:49 ume Exp $	
; 	$KAME: esp.h,v 1.16 2000/10/18 21:28:00 itojun Exp $	
; 
;  * Copyright (C) 1995, 1996, 1997, and 1998 WIDE Project.
;  * All rights reserved.
;  *
;  * Redistribution and use in source and binary forms, with or without
;  * modification, are permitted provided that the following conditions
;  * are met:
;  * 1. Redistributions of source code must retain the above copyright
;  *    notice, this list of conditions and the following disclaimer.
;  * 2. Redistributions in binary form must reproduce the above copyright
;  *    notice, this list of conditions and the following disclaimer in the
;  *    documentation and/or other materials provided with the distribution.
;  * 3. Neither the name of the project nor the names of its contributors
;  *    may be used to endorse or promote products derived from this software
;  *    without specific prior written permission.
;  *
;  * THIS SOFTWARE IS PROVIDED BY THE PROJECT AND CONTRIBUTORS ``AS IS'' AND
;  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;  * ARE DISCLAIMED.  IN NO EVENT SHALL THE PROJECT OR CONTRIBUTORS BE LIABLE
;  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
;  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
;  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;  * SUCH DAMAGE.
;  
; 
;  * RFC1827/2406 Encapsulated Security Payload.
;  
; #ifndef _NETINET6_ESP_H_
; #define _NETINET6_ESP_H_

(require-interface "sys/appleapiopts")
(defrecord esp
   (esp_spi :UInt32)
                                                ;  ESP 
                                                ; variable size, 32bit bound
                                                ;  Initialization Vector 
                                                ; variable size
                                                ;  Payload data 
                                                ; variable size
                                                ;  padding 
                                                ; 8bit
                                                ;  pad size 
                                                ; 8bit
                                                ;  next header 
                                                ; 8bit
                                                ;  next header 
                                                ; variable size, 32bit bound
                                                ;  Authentication data (new IPsec) 
)
(defrecord newesp
   (esp_spi :UInt32)
                                                ;  ESP 
   (esp_seq :UInt32)
                                                ;  Sequence number 
                                                ; variable size
                                                ;  (IV and) Payload data 
                                                ; variable size
                                                ;  padding 
                                                ; 8bit
                                                ;  pad size 
                                                ; 8bit
                                                ;  next header 
                                                ; 8bit
                                                ;  next header 
                                                ; variable size, 32bit bound
                                                ;  Authentication data 
)
(defrecord esptail
   (esp_padlen :UInt8)
                                                ;  pad length 
   (esp_nxt :UInt8)
                                                ;  Next header 
                                                ; variable size, 32bit bound
                                                ;  Authentication data (new IPsec)
)
; #ifdef KERNEL
#| #|
#ifdef__APPLE_API_PRIVATE
struct secasvar;

struct esp_algorithm {
	size_t padbound;	
	int ivlenval;		
	int (*mature) __P((struct secasvar *));
	int keymin;	
	int keymax;	
	int (*schedlen) __P((const struct esp_algorithm *));
	const char *name;
	int (*ivlen) __P((const struct esp_algorithm *, struct secasvar *));
	int (*decrypt) __P((struct mbuf *, size_t,
		struct secasvar *, const struct esp_algorithm *, int));
	int (*encrypt) __P((struct mbuf *, size_t, size_t,
		struct secasvar *, const struct esp_algorithm *, int));
	
	int (*schedule) __P((const struct esp_algorithm *, struct secasvar *));
	int (*blockdecrypt) __P((const struct esp_algorithm *,
		struct secasvar *, u_int8_t *, u_int8_t *));
	int (*blockencrypt) __P((const struct esp_algorithm *,
		struct secasvar *, u_int8_t *, u_int8_t *));
};

extern const struct esp_algorithm *esp_algorithm_lookup __P((int));
extern int esp_max_ivlen __P((void));


extern int esp4_output __P((struct mbuf *, struct ipsecrequest *));
extern void esp4_input __P((struct mbuf *, int off));
extern size_t esp_hdrsiz __P((struct ipsecrequest *));

extern int esp_schedule __P((const struct esp_algorithm *, struct secasvar *));
extern int esp_auth __P((struct mbuf *, size_t, size_t,
	struct secasvar *, u_char *));
#endif
#endif
|#
 |#
; KERNEL

; #endif /*_NETINET6_ESP_H_*/


(provide-interface "esp")