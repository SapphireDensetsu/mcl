(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:proc_reg.h"
; at Sunday July 2,2006 7:31:19 pm.
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
;  * @OSF_COPYRIGHT@
;  
; #ifndef _PPC_PROC_REG_H_
; #define _PPC_PROC_REG_H_

(require-interface "mach/boolean")
;  Define some useful masks that convert from bit numbers 

; #if __PPC__
#| ; #ifdef __BIG_ENDIAN__
; #ifndef ENDIAN_MASK
; #define ENDIAN_MASK(val,size) (1 << ((size-1) - val))

; #endif


; #else

; #error code not ported to little endian targets yet

; #endif /* __BIG_ENDIAN__ */

 |#

; #endif /* __PPC__ */

; #define MASK32(PART)	ENDIAN_MASK(PART ## _BIT, 32)
; #define MASK16(PART)	ENDIAN_MASK(PART ## _BIT, 16)
; #define MASK8(PART)	ENDIAN_MASK(PART ## _BIT, 8)
; #undef MASK
; #define MASK(PART)	MASK32(PART)
(defconstant $BITS_PER_WORD 32)
; #define BITS_PER_WORD	32
(defconstant $BITS_PER_WORD_POW2 5)
; #define BITS_PER_WORD_POW2 5
;  Defines for decoding the MSR bits 
(defconstant $MSR_SF_BIT 0)
; #define MSR_SF_BIT		0
(defconstant $MSR_HV_BIT 3)
; #define MSR_HV_BIT		3
(defconstant $MSR_RES1_BIT 1)
; #define MSR_RES1_BIT	1
(defconstant $MSR_RES2_BIT 2)
; #define MSR_RES2_BIT	2
(defconstant $MSR_RES3_BIT 3)
; #define MSR_RES3_BIT	3
(defconstant $MSR_RES4_BIT 4)
; #define MSR_RES4_BIT	4
(defconstant $MSR_RES5_BIT 5)
; #define MSR_RES5_BIT	5
(defconstant $MSR_VEC_BIT 6)
; #define MSR_VEC_BIT		6
(defconstant $MSR_RES7_BIT 7)
; #define MSR_RES7_BIT	7
(defconstant $MSR_RES8_BIT 8)
; #define MSR_RES8_BIT	8
(defconstant $MSR_RES9_BIT 9)
; #define MSR_RES9_BIT	9
(defconstant $MSR_RES10_BIT 10)
; #define MSR_RES10_BIT	10
(defconstant $MSR_RES11_BIT 11)
; #define MSR_RES11_BIT	11
(defconstant $MSR_KEY_BIT 12)
; #define MSR_KEY_BIT	12	/* Key bit on 603e (not on 603) */
(defconstant $MSR_POW_BIT 13)
; #define	MSR_POW_BIT	13
(defconstant $MSR_TGPR_BIT 14)
; #define MSR_TGPR_BIT	14	/* Temporary GPR mappings on 603/603e */
(defconstant $MSR_ILE_BIT 15)
; #define MSR_ILE_BIT	15
(defconstant $MSR_EE_BIT 16)
; #define	MSR_EE_BIT	16
(defconstant $MSR_PR_BIT 17)
; #define	MSR_PR_BIT	17
(defconstant $MSR_FP_BIT 18)
; #define MSR_FP_BIT	18
(defconstant $MSR_ME_BIT 19)
; #define MSR_ME_BIT	19
(defconstant $MSR_FE0_BIT 20)
; #define MSR_FE0_BIT	20
(defconstant $MSR_SE_BIT 21)
; #define MSR_SE_BIT	21
(defconstant $MSR_BE_BIT 22)
; #define	MSR_BE_BIT	22
(defconstant $MSR_FE1_BIT 23)
; #define MSR_FE1_BIT	23
(defconstant $MSR_RES24_BIT 24)
; #define MSR_RES24_BIT	24	/* AL bit in power architectures */
(defconstant $MSR_IP_BIT 25)
; #define MSR_IP_BIT      25
(defconstant $MSR_IR_BIT 26)
; #define MSR_IR_BIT      26
(defconstant $MSR_DR_BIT 27)
; #define MSR_DR_BIT      27
(defconstant $MSR_RES28_BIT 28)
; #define MSR_RES28_BIT	28
(defconstant $MSR_PM_BIT 29)
; #define MSR_PM_BIT	29
(defconstant $MSR_RI_BIT 30)
; #define	MSR_RI_BIT	30
(defconstant $MSR_LE_BIT 31)
; #define MSR_LE_BIT	31
;  MSR for kernel mode, interrupts disabled, running in virtual mode 
; #define MSR_SUPERVISOR_INT_OFF (MASK(MSR_ME) | MASK(MSR_IR) | MASK(MSR_DR))  
;  MSR for above but with interrupts enabled 
; #define MSR_SUPERVISOR_INT_ON (MSR_SUPERVISOR_INT_OFF | MASK(MSR_EE))
;  MSR for physical mode code 
; #define MSR_VM_OFF     (MASK(MSR_ME))
;  MSR for physical instruction, virtual data 
; #define MSR_PHYS_INST_VIRT_DATA     (MASK(MSR_ME) | MASK(MSR_IR))
;  MSR mask for user-exported bits - identify bits that must be set/reset 
;  SET - external exceptions, machine check, vm on, user-level privs 
; #define MSR_EXPORT_MASK_SET	(MASK(MSR_EE)| MASK(MSR_ME)| 				 MASK(MSR_IR)|MASK(MSR_DR)|MASK(MSR_PR))
;  only the following bits may be changed by a task 
; #define MSR_IMPORT_BITS (MASK(MSR_FE0)|MASK(MSR_SE)|MASK(MSR_BE)| 			 MASK(MSR_FE1)| MASK(MSR_PM) | MASK(MSR_LE))
; #define MSR_PREPARE_FOR_IMPORT(origmsr, newmsr) 	((origmsr & ~MSR_IMPORT_BITS) | (newmsr & MSR_IMPORT_BITS))
; #define MSR_VEC_ON	(MASK(MSR_VEC))
; #define USER_MODE(msr) (msr & MASK(MSR_PR) ? TRUE : FALSE)
;  seg reg values must be simple expressions so that assembler can cope 
(defconstant $SEG_REG_INVALID 0)
; #define SEG_REG_INVALID 0x0000
(defconstant $KERNEL_SEG_REG0_VALUE 536870912)
; #define KERNEL_SEG_REG0_VALUE 0x20000000 /* T=0,Ks=0,Ku=1 PPC_SID_KERNEL=0*/
;  For SEG_REG_PROT we have T=0, Ks=0, Ku=1 
(defconstant $SEG_REG_PROT 536870912)
; #define SEG_REG_PROT	0x20000000   /* seg regs should have these bits set */
;  SR_COPYIN is used for copyin/copyout+remapping and must be
;  * saved and restored in the thread context.
;  
;  SR_UNUSED_BY_KERN is unused by the kernel, and thus contains
;  * the space ID of the currently interrupted user task immediately
;  * after an exception and before interrupts are reenabled. It's used
;  * purely for an assert.
;  
;  SR_KERNEL used for asserts... 
; #define SR_COPYIN	sr14
; #define SR_UNUSED_BY_KERN sr13
; #define SR_KERNEL 	sr0
(defconstant $SR_UNUSED_BY_KERN_NUM 13)
; #define SR_UNUSED_BY_KERN_NUM 13
; #define SR_COPYIN_NAME	sr14
(defconstant $SR_COPYIN_NUM 14)
; #define SR_COPYIN_NUM	14
(defconstant $BAT_INVALID 0)
; #define BAT_INVALID 0
;  DSISR bits on data access exceptions 
(defconstant $DSISR_IO_BIT 0)
; #define DSISR_IO_BIT		0	/* NOT USED on 601 */
(defconstant $DSISR_HASH_BIT 1)
; #define DSISR_HASH_BIT		1
(defconstant $DSISR_NOEX_BIT 3)
; #define DSISR_NOEX_BIT		3
(defconstant $DSISR_PROT_BIT 4)
; #define DSISR_PROT_BIT		4
(defconstant $DSISR_IO_SPC_BIT 5)
; #define DSISR_IO_SPC_BIT	5
(defconstant $DSISR_WRITE_BIT 6)
; #define DSISR_WRITE_BIT		6
(defconstant $DSISR_WATCH_BIT 9)
; #define DSISR_WATCH_BIT		9
(defconstant $DSISR_EIO_BIT 11)
; #define DSISR_EIO_BIT		11
(defconstant $dsiMiss 1073741824)
; #define dsiMiss 			0x40000000
(defconstant $dsiMissb 1)
; #define dsiMissb 			1
(defconstant $dsiNoEx 268435456)
; #define dsiNoEx				0x10000000
(defconstant $dsiProt 134217728)
; #define dsiProt				0x08000000
(defconstant $dsiInvMode 67108864)
; #define dsiInvMode			0x04000000
(defconstant $dsiStore 33554432)
; #define dsiStore			0x02000000
(defconstant $dsiAC 4194304)
; #define dsiAC				0x00400000
(defconstant $dsiSeg 2097152)
; #define dsiSeg				0x00200000
(defconstant $dsiValid 1583349760)
; #define dsiValid			0x5E600000
(defconstant $dsiSpcNest 65536)
; #define dsiSpcNest			0x00010000	/* Special nest - software flag */
(defconstant $dsiSpcNestb 15)
; #define dsiSpcNestb			15			/* Special nest - software flag */
(defconstant $dsiSoftware 65535)
; #define dsiSoftware			0x0000FFFF
;  SRR1 bits on data/instruction translation exceptions 
(defconstant $SRR1_TRANS_HASH_BIT 1)
; #define SRR1_TRANS_HASH_BIT	1
(defconstant $SRR1_TRANS_IO_BIT 3)
; #define SRR1_TRANS_IO_BIT	3
(defconstant $SRR1_TRANS_PROT_BIT 4)
; #define SRR1_TRANS_PROT_BIT	4
(defconstant $SRR1_TRANS_NO_PTE_BIT 10)
; #define SRR1_TRANS_NO_PTE_BIT	10
;  SRR1 bits on program exceptions 
(defconstant $SRR1_PRG_FE_BIT 11)
; #define SRR1_PRG_FE_BIT		11
(defconstant $SRR1_PRG_ILL_INS_BIT 12)
; #define SRR1_PRG_ILL_INS_BIT	12
(defconstant $SRR1_PRG_PRV_INS_BIT 13)
; #define SRR1_PRG_PRV_INS_BIT	13
(defconstant $SRR1_PRG_TRAP_BIT 14)
; #define SRR1_PRG_TRAP_BIT	14
; 
;  * Virtual to physical mapping macros/structures.
;  * IMPORTANT NOTE: there is one mapping per HW page, not per MACH page.
;  
(defconstant $PTE1_WIMG_GUARD_BIT 28)
; #define PTE1_WIMG_GUARD_BIT	28	/* Needed for assembler */
(defconstant $PTE1_REFERENCED_BIT 23)
; #define PTE1_REFERENCED_BIT	23	/* ditto */
(defconstant $PTE1_CHANGED_BIT 24)
; #define PTE1_CHANGED_BIT	24
(defconstant $PTE0_HASH_ID_BIT 25)
; #define PTE0_HASH_ID_BIT	25
(defconstant $PTE_WIMG_CB_CACHED_COHERENT 0)
; #define PTE_WIMG_CB_CACHED_COHERENT		0 	/* cached, writeback, coherent (default) */
(defconstant $PTE_WIMG_CB_CACHED_COHERENT_GUARDED 1)
; #define PTE_WIMG_CB_CACHED_COHERENT_GUARDED	1 	/* cached, writeback, coherent, guarded */
(defconstant $PTE_WIMG_UNCACHED_COHERENT 2)
; #define PTE_WIMG_UNCACHED_COHERENT		2	/* uncached, coherentt */
(defconstant $PTE_WIMG_UNCACHED_COHERENT_GUARDED 3)
; #define PTE_WIMG_UNCACHED_COHERENT_GUARDED	3	/* uncached, coherent, guarded */
; #define PTE_WIMG_DEFAULT 	PTE_WIMG_CB_CACHED_COHERENT
; #define PTE_WIMG_IO		PTE_WIMG_UNCACHED_COHERENT_GUARDED
; #ifndef ASSEMBLER
; #ifdef __GNUC__
#| #|









        

#define eieio() \
        __asm__ volatile("eieio")

        

#define sync() \
        __asm__ volatile("sync")

        

#define isync() \
        __asm__ volatile("isync")




extern unsigned int mflr(void);

extern __inline__ unsigned int mflr(void)
{
        unsigned int result;
        __asm__ volatile("mflr %0" : "=r" (result));
        return result;
}

extern unsigned int mfpvr(void);

extern __inline__ unsigned int mfpvr(void)
{
        unsigned int result;
        __asm__ ("mfpvr %0" : "=r" (result));
        return result;
}



extern unsigned int mfmsr(void);

extern __inline__ unsigned int mfmsr(void)
{
        unsigned int result;
        __asm__ volatile("mfmsr %0" : "=r" (result));
        return result;
}


extern unsigned int mfdar(void);

extern __inline__ unsigned int mfdar(void)
{
        unsigned int result;
        __asm__ volatile("mfdar %0" : "=r" (result));
        return result;
}

extern void mtdec(unsigned int val);

extern __inline__ void mtdec(unsigned int val)
{
        __asm__ volatile("mtdec %0" : : "r" (val));
        return;
}

extern void mttb(unsigned int val);

extern __inline__ void mttb(unsigned int val)
{
        __asm__ volatile("mtspr tbl, %0" : : "r" (val));
        return;
}

extern unsigned int mftb(void);

extern __inline__ unsigned int mftb(void)
{
        unsigned int result;
        __asm__ volatile("mftb %0" : "=r" (result));
        return result;
}

extern void mttbu(unsigned int val);

extern __inline__ void mttbu(unsigned int val)
{
        __asm__ volatile("mtspr tbu, %0" : : "r" (val));
        return;
}

extern unsigned int mftbu(void);

extern __inline__ unsigned int mftbu(void)
{
        unsigned int result;
        __asm__ volatile("mftbu %0" : "=r" (result));
        return result;
}

extern unsigned int mfl2cr(void);

extern __inline__ unsigned int mfl2cr(void)
{
  unsigned int result;
  __asm__ volatile("mfspr %0, l2cr" : "=r" (result));
  return result;
}

extern unsigned int cntlzw(unsigned int num);

extern __inline__ unsigned int cntlzw(unsigned int num)
{
  unsigned int result;
  __asm__ volatile("cntlzw %0, %1" : "=r" (result) : "r" (num));
  return result;
}




extern unsigned int lwbrx(unsigned int addr);

extern __inline__ unsigned int lwbrx(unsigned int addr)
{
  unsigned int result;
  __asm__ volatile("lwbrx %0, 0, %1" : "=r" (result) : "r" (addr));
  return result;
}

extern void stwbrx(unsigned int data, unsigned int addr);

extern __inline__ void stwbrx(unsigned int data, unsigned int addr)
{
  __asm__ volatile("stwbrx %0, 0, %1" : : "r" (data), "r" (addr));
}


extern unsigned long   mfmmcr0(void);
extern void                    mtmmcr0(unsigned long);
extern unsigned long   mfmmcr1(void);
extern void                    mtmmcr1(unsigned long);
extern unsigned long   mfmmcr2(void);
extern void                    mtmmcr2(unsigned long);
extern unsigned long   mfpmc1(void);
extern void                    mtpmc1(unsigned long);
extern unsigned long   mfpmc2(void);
extern void                    mtpmc2(unsigned long);
extern unsigned long   mfpmc3(void);
extern void                    mtpmc3(unsigned long);
extern unsigned long   mfpmc4(void);
extern void                    mtpmc4(unsigned long);
extern unsigned long   mfsia(void);
extern unsigned long   mfsda(void);



#define mtsprg(n, reg)  __asm__ volatile("mtsprg  " #n ", %0" : : "r" (reg))
#define mfsprg(reg, n)  __asm__ volatile("mfsprg  %0, " #n : "=r" (reg))

#define mtspr(spr, val)  __asm__ volatile("mtspr  " #spr ", %0" : : "r" (val))
#define mfspr(reg, spr)  __asm__ volatile("mfspr  %0, " #spr : "=r" (reg))

#endif
|#
 |#
;  __GNUC__ 

; #endif /* !ASSEMBLER */


; #endif /* _PPC_PROC_REG_H_ */


(provide-interface "proc_reg")