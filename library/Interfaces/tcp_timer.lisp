(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:tcp_timer.h"
; at Sunday July 2,2006 7:32:05 pm.
; 
;  * Copyright (c) 2000 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * The contents of this file constitute Original Code as defined in and
;  * are subject to the Apple Public Source License Version 1.1 (the
;  * "License").  You may not use this file except in compliance with the
;  * License.  Please obtain a copy of the License at
;  * http://www.apple.com/publicsource and read it before using this file.
;  * 
;  * This Original Code and all software distributed under the License are
;  * distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT.  Please see the
;  * License for the specific language governing rights and limitations
;  * under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
; 
;  * Copyright (c) 1982, 1986, 1993
;  *	The Regents of the University of California.  All rights reserved.
;  *
;  * Redistribution and use in source and binary forms, with or without
;  * modification, are permitted provided that the following conditions
;  * are met:
;  * 1. Redistributions of source code must retain the above copyright
;  *    notice, this list of conditions and the following disclaimer.
;  * 2. Redistributions in binary form must reproduce the above copyright
;  *    notice, this list of conditions and the following disclaimer in the
;  *    documentation and/or other materials provided with the distribution.
;  * 3. All advertising materials mentioning features or use of this software
;  *    must display the following acknowledgement:
;  *	This product includes software developed by the University of
;  *	California, Berkeley and its contributors.
;  * 4. Neither the name of the University nor the names of its contributors
;  *    may be used to endorse or promote products derived from this software
;  *    without specific prior written permission.
;  *
;  * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
;  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;  * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
;  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
;  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
;  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;  * SUCH DAMAGE.
;  *
;  *	@(#)tcp_timer.h	8.1 (Berkeley) 6/10/93
;  * $FreeBSD: src/sys/netinet/tcp_timer.h,v 1.18 1999/12/29 04:41:03 peter Exp $
;  
; #ifndef _NETINET_TCP_TIMER_H_
; #define _NETINET_TCP_TIMER_H_

(require-interface "sys/appleapiopts")
; 
;  * Definitions of the TCP timers.  These timers are counted
;  * down PR_SLOWHZ times a second.
;  
(defconstant $TCPT_NTIMERS 4)
; #define	TCPT_NTIMERS	4
(defconstant $TCPT_REXMT 0)
; #define	TCPT_REXMT	0		/* retransmit */
(defconstant $TCPT_PERSIST 1)
; #define	TCPT_PERSIST	1		/* retransmit persistence */
(defconstant $TCPT_KEEP 2)
; #define	TCPT_KEEP	2		/* keep alive */
(defconstant $TCPT_2MSL 3)
; #define	TCPT_2MSL	3		/* 2*msl quiet time timer */
; 
;  * The TCPT_REXMT timer is used to force retransmissions.
;  * The TCP has the TCPT_REXMT timer set whenever segments
;  * have been sent for which ACKs are expected but not yet
;  * received.  If an ACK is received which advances tp->snd_una,
;  * then the retransmit timer is cleared (if there are no more
;  * outstanding segments) or reset to the base value (if there
;  * are more ACKs expected).  Whenever the retransmit timer goes off,
;  * we retransmit one unacknowledged segment, and do a backoff
;  * on the retransmit timer.
;  *
;  * The TCPT_PERSIST timer is used to keep window size information
;  * flowing even if the window goes shut.  If all previous transmissions
;  * have been acknowledged (so that there are no retransmissions in progress),
;  * and the window is too small to bother sending anything, then we start
;  * the TCPT_PERSIST timer.  When it expires, if the window is nonzero,
;  * we go to transmit state.  Otherwise, at intervals send a single byte
;  * into the peer's window to force him to update our window information.
;  * We do this at most as often as TCPT_PERSMIN time intervals,
;  * but no more frequently than the current estimate of round-trip
;  * packet time.  The TCPT_PERSIST timer is cleared whenever we receive
;  * a window update from the peer.
;  *
;  * The TCPT_KEEP timer is used to keep connections alive.  If an
;  * connection is idle (no segments received) for TCPTV_KEEP_INIT amount of time,
;  * but not yet established, then we drop the connection.  Once the connection
;  * is established, if the connection is idle for TCPTV_KEEP_IDLE time
;  * (and keepalives have been enabled on the socket), we begin to probe
;  * the connection.  We force the peer to send us a segment by sending:
;  *	<SEQ=SND.UNA-1><ACK=RCV.NXT><CTL=ACK>
;  * This segment is (deliberately) outside the window, and should elicit
;  * an ack segment in response from the peer.  If, despite the TCPT_KEEP
;  * initiated segments we cannot elicit a response from a peer in TCPT_MAXIDLE
;  * amount of time probing, then we drop the connection.
;  
; 
;  * Time constants.
;  
; #ifdef __APPLE_API_PRIVATE
#| #|
#define TCPTV_MSL	( 30*PR_SLOWHZ)		
#define TCPTV_SRTTBASE	0			
#define TCPTV_RTOBASE	(  3*PR_SLOWHZ)		
#define TCPTV_SRTTDFLT	(  3*PR_SLOWHZ)		

#define TCPTV_PERSMIN	(  5*PR_SLOWHZ)		
#define TCPTV_PERSMAX	( 60*PR_SLOWHZ)		

#define TCPTV_KEEP_INIT	( 75*PR_SLOWHZ)		
#define TCPTV_KEEP_IDLE	(120*60*PR_SLOWHZ)	
#define TCPTV_KEEPINTVL	( 75*PR_SLOWHZ)		
#define TCPTV_KEEPCNT	8			

#define TCPTV_MIN	(  1*PR_SLOWHZ)		
#define TCPTV_REXMTMAX	( 64*PR_SLOWHZ)		

#define TCPTV_TWTRUNC	8			

#define TCP_LINGERTIME	120			

#define TCP_MAXRXTSHIFT	12			

#define TCPTV_DELACK	PR_FASTHZ 		

#ifdefTCPTIMERS
static char *tcptimers[] =
    { "REXMT", "PERSIST", "KEEP", "2MSL" };
#endif

#define TCPT_RANGESET(tv, value, tvmin, tvmax) do { \
	(tv) = (value); \
	if ((u_long)(tv) < (u_long)(tvmin)) \
		(tv) = (tvmin); \
	else if ((u_long)(tv) > (u_long)(tvmax)) \
		(tv) = (tvmax); \
} while(0)

#ifdefKERNEL

#define TCP_KEEPIDLE(tp) \
	(tp->t_keepidle && (tp->t_inpcb->inp_socket->so_options & SO_KEEPALIVE) ? \
		tp->t_keepidle : tcp_keepidle)

extern int tcp_keepinit;		
extern int tcp_keepidle;		
extern int tcp_keepintvl;		
extern int tcp_maxidle;			
extern int tcp_delacktime;		
extern int tcp_maxpersistidle;
extern int tcp_msl;
extern int tcp_ttl;			
extern int tcp_backoff[];

void	tcp_timer_2msl __P((void *xtp));
void	tcp_timer_keep __P((void *xtp));
void	tcp_timer_persist __P((void *xtp));
void	tcp_timer_rexmt __P((void *xtp));
void	tcp_timer_delack __P((void *xtp));

#endif
#endif
|#
 |#
;  __APPLE_API_PRIVATE 

; #endif /* !_NETINET_TCP_TIMER_H_ */


(provide-interface "tcp_timer")