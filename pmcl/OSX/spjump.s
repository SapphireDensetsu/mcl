/*
;;; 07/04/96 bill breakpoint
;;; 06/15/96 gb   subprims for builtin functions.
;;; ---- 3.9 release
;;; 03/01/96 bill add ffcallslep
;;; 01/18/96 gb  add restorecontext, lexpr_entry.
;;; 12/13/95 gb  progvsave,progvrestore, callbuiltin*, popj;
;;;              save/restore context; udfcall->reset
; 11/29/95  gb   stack_misc_alloc_init, misc_alloc_init
; 11/11/95 bill  Add callback
; 11/06/95  gb   replace duplicate regtrap with stack_misc_alloc
*/
	

     include(lisp.s)
	_beginfile
	
define([_spjump],[
        .align 2
        .globl _SP$1
_exportfn(j_SP$1)
          __(b _SP$1)
_endfn
])

	.globl C(spjump_start)
C(spjump_start):
	_spjump(jmpsym)
        _spjump(jmpnfn)
        _spjump(funcall)
        _spjump(mkcatch1v)
        _spjump(mkunwind)
        _spjump(mkcatchmv)
        _spjump(throw)
        _spjump(nthrowvalues)
        _spjump(nthrow1value)
	_spjump(bind)
	_spjump(bind_self)
	_spjump(bind_nil)
	_spjump(unbind)
	_spjump(unbind_n)
	_spjump(unbind_to)
	_spjump(conslist)
        _spjump(conslist_star)
        _spjump(stkconslist)
        _spjump(stkconslist_star)
        _spjump(mkstackv) 
        _spjump(subtag_misc_ref)
        _spjump(newblocktag)
        _spjump(newgotag)
        _spjump(stack_misc_alloc)
        _spjump(gvector)
        _spjump(nvalret)
        _spjump(mvpass) 
        _spjump(fitvals)
        _spjump(nthvalue)
        _spjump(values)
        _spjump(default_optional_args)
        _spjump(opt_supplied_p)
        _spjump(heap_rest_arg)
        _spjump(req_heap_rest_arg)
        _spjump(heap_cons_rest_arg)
        _spjump(simple_keywords)
        _spjump(keyword_args)
        _spjump(keyword_bind) 
	_spjump(ffcall)
	_spjump(ffcalladdress)
        _spjump(ksignalerr) 
        _spjump(stack_rest_arg)
        _spjump(req_stack_rest_arg)
        _spjump(stack_cons_rest_arg)
	_spjump(unused)   		/* defsubp strap         unused */
        _spjump(call_closure)        
        _spjump(getxlong)
        _spjump(spreadargz)
        _spjump(tfuncallgen)
        _spjump(tfuncallslide)
        _spjump(tfuncallvsp)
        _spjump(tcallsymgen)
        _spjump(tcallsymslide)
        _spjump(tcallsymvsp)
        _spjump(tcallnfngen)
        _spjump(tcallnfnslide)
        _spjump(tcallnfnvsp) 
        _spjump(misc_ref)
        _spjump(misc_set)
        _spjump(stkconsyz)
        _spjump(stkvcell0)
        _spjump(stkvcellvsp)      
        _spjump(makestackblock)
        _spjump(makestackblock0)
        _spjump(makestacklist)
        _spjump(stkgvector)
        _spjump(misc_alloc)
	 _spjump(unused1)   /* defsubp regtrap  unused */
	_spjump(bind_self_boundp_check)
        _spjump(macro_bind)
        _spjump(destructuring_bind)
        _spjump(destructuring_bind_inner)
        _spjump(recover_values)
        _spjump(vpopargregs)
        _spjump(integer_sign)
        _spjump(subtag_misc_set)
        _spjump(spread_lexprz)
	_spjump(setqsym)
        _spjump(reset)
        _spjump(mvslide)
        _spjump(save_values)
        _spjump(add_values)
	_spjump(callback)
        _spjump(misc_alloc_init)
        _spjump(stack_misc_alloc_init)
    	_spjump(progvsave)
        _spjump(progvrestore)
        _spjump(callbuiltin)
        _spjump(callbuiltin0)
        _spjump(callbuiltin1)
        _spjump(callbuiltin2)
        _spjump(callbuiltin3)
        _spjump(popj)
        _spjump(restorefullcontext)
        _spjump(savecontextvsp)
        _spjump(savecontext0)
        _spjump(restorecontext)
        _spjump(lexpr_entry)
	_spjump(ffcallslep)
        _spjump(builtin_plus)
        _spjump(builtin_minus)
        _spjump(builtin_times)
        _spjump(builtin_div)
        _spjump(builtin_eq)
        _spjump(builtin_ne)
        _spjump(builtin_gt)
        _spjump(builtin_ge)
        _spjump(builtin_lt)
        _spjump(builtin_le)
        _spjump(builtin_eql)
        _spjump(builtin_length)
        _spjump(builtin_seqtype)   
        _spjump(builtin_assq)
        _spjump(builtin_memq)
        _spjump(builtin_logbitp)
        _spjump(builtin_logior)
        _spjump(builtin_logand)
        _spjump(builtin_ash)
        _spjump(builtin_negate)
        _spjump(builtin_logxor)
        _spjump(builtin_aref1)
        _spjump(builtin_aset1)
        _spjump(breakpoint)
	_spjump(xuuo_interr)
	_spjump(xuuo_intcerr)
	_spjump(trap_wrongnargs)
	_spjump(trap_toofewargs)
	_spjump(trap_toomanyargs)
	_spjump(trap_intpoll)
	_spjump(ensure_cons)
	_spjump(ensure_heap_space)
        _spjump(finish_alloc)
        _spjump(leaf_ensure_heap_space)
        _spjump(write_barrier)
        _spjump(set_hash_key)
        _spjump(box_unsigned)
        _spjump(box_signed)
        _spjump(fixnum_overflow)
        _spjump(udfcall)
        _spjump(uuovectorbounds)
        _spjump(uuoslotunbound)
        _spjump(uuounbound)
        _spjump(xalloc_handler)
        _spjump(cscheck)
        _spjump(tscheck)
        _spjump(xpfu_exception)

        .globl C(spjump_end)
C(spjump_end):          
        _endfile