;;;-*- Mode: Lisp; Package: CCL -*-

; l1-cl-package.lisp
; Copyright 1997-2000 Digitool, Inc.

;; Modification History
;;
;; 04/23/97 bill  New file. Broken out from level-1.lisp
;;

(eval-when (eval compile)
  (defconstant %lisp-symbols%  ; the first few hundred are from Sandra Loosemore's
    ; "cl-index" database as of ~12/20/89.
    '("*BREAK-ON-SIGNALS*"
      "*COMPILE-FILE-PATHNAME*"
      "*COMPILE-FILE-TRUENAME*"
      "*COMPILE-PRINT*"
      "*COMPILE-VERBOSE*"
      "*DEBUGGER-HOOK*"
      "*GENSYM-COUNTER*"
      "*LOAD-PATHNAME*"
      "*LOAD-PRINT*"
      "*LOAD-TRUENAME*"
      "*PRINT-LINES*"
      "*PRINT-MISER-WIDTH*"
      "*PRINT-PPRINT-DISPATCH*"
      "*PRINT-READABLY*"
      "*PRINT-RIGHT-MARGIN*"
      "*READ-EVAL*"
      "ABORT"
      "ADD-METHOD"
      "ALLOCATE-INSTANCE"
      "ARITHMETIC-ERROR"
      "ARITHMETIC-ERROR-OPERANDS"
      "ARITHMETIC-ERROR-OPERATION"
      "AUGMENT-ENVIRONMENT"
      "BASE-CHARACTER"
      "BASE-STRING"
      "BROADCAST-STREAM"
      "BROADCAST-STREAM-STREAMS"
      "BUILT-IN-CLASS"
      "CALL-METHOD"
      "CALL-NEXT-METHOD"
      "CELL-ERROR"
      "CELL-ERROR-NAME"
      "CHANGE-CLASS"
      "CLASS-NAME"
      "CLASS-OF"
      "COMPILE-FILE-PATHNAME"
      "COMPILER-MACRO-FUNCTION"
      "COMPLEMENT"
      "COMPUTE-APPLICABLE-METHODS"
      "COMPUTE-RESTARTS"
      "CONCATENATED-STREAM"
      "CONCATENATED-STREAM-STREAMS"
      "CONDITION"
      "CONSTANTLY"
      "CONTINUE"
      "CONTROL-ERROR"
      "COPY-PPRINT-DISPATCH"
      "DEBUG"
      "DECLAIM"
      "DECLARATION-INFORMATION"
      "DEFCLASS"
      "DEFGENERIC"
      "DEFINE-COMPILER-MACRO"
      "DEFINE-CONDITION"
      "DEFINE-DECLARATION"
      "DEFINE-METHOD-COMBINATION"
      "DEFMETHOD"
      "DEFPACKAGE"
      "DELETE-PACKAGE"
      "DESCRIBE-OBJECT"
      "DESTRUCTURING-BIND"
      "DIVISION-BY-ZERO"
      "DYNAMIC-EXTENT"
      "ECHO-STREAM"
      "ECHO-STREAM-INPUT-STREAM"
      "ECHO-STREAM-OUTPUT-STREAM"
      "ENCLOSE"
      "END-OF-FILE"
      "ENSURE-GENERIC-FUNCTION"
      "EXTENDED-CHARACTER"
      "FDEFINITION"
      "FILE-ERROR"
      "FILE-ERROR-PATHNAME"
      "FILE-STREAM"
      "FILE-STRING-LENGTH"
      "FIND-CLASS"
      "FIND-METHOD"
      "FIND-RESTART"
      "FLOATING-POINT-INEXACT"
      "FLOATING-POINT-INVALID-OPERATION"
      "FLOATING-POINT-OVERFLOW"
      "FLOATING-POINT-UNDERFLOW"
      "FORMATTER"
      "FUNCTION-INFORMATION"
      "FUNCTION-KEYWORDS"
      "FUNCTION-LAMBDA-EXPRESSION"
      "GENERIC-FLET"
      "GENERIC-FUNCTION"
      "GENERIC-LABELS"
      "HANDLER-BIND"
      "HANDLER-CASE"
      "HASH-TABLE-REHASH-SIZE"
      "HASH-TABLE-REHASH-THRESHOLD"
      "HASH-TABLE-SIZE"
      "HASH-TABLE-TEST"
      "IGNORE-ERRORS"
      "INITIALIZE-INSTANCE"
      "INTERACTIVE-STREAM-P"
      "INVALID-METHOD-ERROR"
      "INVOKE-DEBUGGER"
      "INVOKE-RESTART"
      "INVOKE-RESTART-INTERACTIVELY"
      "LEAST-NEGATIVE-NORMALIZED-DOUBLE-FLOAT"
      "LEAST-NEGATIVE-NORMALIZED-LONG-FLOAT"
      "LEAST-NEGATIVE-NORMALIZED-SHORT-FLOAT"
      "LEAST-NEGATIVE-NORMALIZED-SINGLE-FLOAT"
      "LEAST-POSITIVE-NORMALIZED-DOUBLE-FLOAT"
      "LEAST-POSITIVE-NORMALIZED-LONG-FLOAT"
      "LEAST-POSITIVE-NORMALIZED-SHORT-FLOAT"
      "LEAST-POSITIVE-NORMALIZED-SINGLE-FLOAT"
      "LOAD-LOGICAL-PATHNAME-TRANSLATIONS"
      "LOAD-TIME-VALUE"
      "LOGICAL-PATHNAME"
      "LOGICAL-PATHNAME-TRANSLATIONS"
      "LOOP-FINISH"
      "MAKE-CONDITION"
      "MAKE-INSTANCE"
      "MAKE-INSTANCES-OBSOLETE"
      "MAKE-LOAD-FORM"
      "MAKE-LOAD-FORM-SAVING-SLOTS"
      "MAKE-METHOD"
      "MAP-INTO"
      "METHOD-COMBINATION"
      "METHOD-COMBINATION-ERROR"
      "METHOD-QUALIFIERS"
      "MUFFLE-WARNING"
      "NEXT-METHOD-P"
      "NO-APPLICABLE-METHOD"
      "NO-NEXT-METHOD"
      "NTH-VALUE"
      "OPEN-STREAM-P"
      "PACKAGE-ERROR"
      "PACKAGE-ERROR-PACKAGE"
      "PARSE-ERROR"
      "PARSE-MACRO"
      "PATHNAME-MATCH-P"
      "PPRINT-DISPATCH"
      "PPRINT-EXIT-IF-LIST-EXHAUSTED"
      "PPRINT-FILL"
      "PPRINT-INDENT"
      "PPRINT-LINEAR"
      "PPRINT-LOGICAL-BLOCK"
      "PPRINT-NEWLINE"
      "PPRINT-POP"
      "PPRINT-TAB"
      "PPRINT-TABULAR"
      "PRINT-NOT-READABLE"
      "PRINT-NOT-READABLE-OBJECT"
      "PRINT-OBJECT"
      "PRINT-UNREADABLE-OBJECT"
      "PROGRAM-ERROR"
      "READTABLE-CASE"
      "REAL"
      "REALP"
      "REINITIALIZE-INSTANCE"
      "REMOVE-METHOD"
      "RESTART"
      "RESTART-BIND"
      "RESTART-CASE"
      "RESTART-NAME"
      "ROW-MAJOR-AREF"
      "SERIOUS-CONDITION"
      "SET-PPRINT-DISPATCH"
      "SHARED-INITIALIZE"
      "SIGNAL"
      "SIMPLE-BASE-STRING"
      "SIMPLE-CONDITION"
      "SIMPLE-CONDITION-FORMAT-ARGUMENTS"
      "SIMPLE-CONDITION-FORMAT-STRING"
      "SIMPLE-ERROR"
      "SIMPLE-TYPE-ERROR"
      "SIMPLE-WARNING"
      "SLOT-BOUNDP"
      "SLOT-EXISTS-P"
      "SLOT-MAKUNBOUND"
      "SLOT-MISSING"
      "SLOT-UNBOUND"
      "SLOT-VALUE"
      "STANDARD"
      "STANDARD-CLASS"
      "STANDARD-GENERIC-FUNCTION"
      "STANDARD-METHOD"
      "STANDARD-OBJECT"
      "STORAGE-CONDITION"
      "STORE-VALUE"
      "STREAM-ERROR"
      "STREAM-ERROR-STREAM"
      "STREAM-EXTERNAL-FORMAT"
      "STRING-STREAM"
      "STRUCTURE-CLASS"
      "STYLE-WARNING"
      "SYMBOL-MACROLET"
      "SYNONYM-STREAM"
      "SYNONYM-STREAM-SYMBOL"
      "TRANSLATE-LOGICAL-PATHNAME"
      "TRANSLATE-PATHNAME"
      "TWO-WAY-STREAM"
      "TWO-WAY-STREAM-INPUT-STREAM"
      "TWO-WAY-STREAM-OUTPUT-STREAM"
      "TYPE-ERROR"
      "TYPE-ERROR-DATUM"
      "TYPE-ERROR-EXPECTED-TYPE"
      "UNBOUND-SLOT"
      "UNBOUND-SLOT-INSTANCE"
      "UNBOUND-VARIABLE"
      "UNDEFINED-FUNCTION"
      "UPDATE-INSTANCE-FOR-DIFFERENT-CLASS"
      "UPDATE-INSTANCE-FOR-REDEFINED-CLASS"
      "UPGRADED-ARRAY-ELEMENT-TYPE"
      "UPGRADED-COMPLEX-PART-TYPE"
      "USE-VALUE"
      "VARIABLE-INFORMATION"
      "WARNING"
      "WILD-PATHNAME-P"
      "WITH-ACCESSORS"
      "WITH-ADDED-METHODS"
      "WITH-COMPILATION-UNIT"
      "WITH-CONDITION-RESTARTS"
      "WITH-HASH-TABLE-ITERATOR"
      "WITH-PACKAGE-ITERATOR"
      "WITH-SIMPLE-RESTART"
      "WITH-SLOTS"
      "WITH-STANDARD-IO-SYNTAX"
      
      ; CLtL/1 stuff starts here:
      
      "&ALLOW-OTHER-KEYS"
      "&AUX"
      "&BODY"
      "&ENVIRONMENT"
      "&KEY"
      "&OPTIONAL"
      "&REST"
      "&WHOLE"
      "*"
      "**"
      "***"
      "*APPLYHOOK*"
      "*DEBUG-IO*"
      "*DEFAULT-PATHNAME-DEFAULTS*"
      "*ERROR-OUTPUT*"
      "*EVALHOOK*"
      "*FEATURES*"
      "*LOAD-VERBOSE*"
      "*MACROEXPAND-HOOK*"
      "*PACKAGE*"
      "*PRINT-ARRAY*"
      "*PRINT-BASE*"
      "*PRINT-CASE*"
      "*PRINT-CIRCLE*"
      "*PRINT-ESCAPE*"
      "*PRINT-GENSYM*"
      "*PRINT-LENGTH*"
      "*PRINT-LEVEL*"
      "*PRINT-PRETTY*"
      "*PRINT-RADIX*"
      "*QUERY-IO*"
      "*RANDOM-STATE*"
      "*READ-BASE*"
      "*READ-DEFAULT-FLOAT-FORMAT*"
      "*READ-SUPPRESS*"
      "*READTABLE*"
      "*STANDARD-INPUT*"
      "*STANDARD-OUTPUT*"
      "*TERMINAL-IO*"
      "*TRACE-OUTPUT*"
      "+"
      "++"
      "+++"
      "-"
      "/"
      "//"
      "///"
      "/="
      "1+"
      "1-"
      "<"
      "<="
      "="
      ">"
      ">="
      "ABS"
      "ACONS"
      "ACOS"
      "ACOSH"
      "ADJOIN"
      "ADJUST-ARRAY"
      "ADJUSTABLE-ARRAY-P"
      "ALPHA-CHAR-P"
      "ALPHANUMERICP"
      "AND"
      "APPEND"
      "APPLY"
      "APPLYHOOK"
      "APROPOS"
      "APROPOS-LIST"
      "AREF"
      "ARRAY"
      "ARRAY-DIMENSION"
      "ARRAY-DIMENSION-LIMIT"
      "ARRAY-DIMENSIONS"
      "ARRAY-ELEMENT-TYPE"
      "ARRAY-HAS-FILL-POINTER-P"
      "ARRAY-IN-BOUNDS-P"
      "ARRAY-RANK"
      "ARRAY-RANK-LIMIT"
      "ARRAY-ROW-MAJOR-INDEX"
      "ARRAY-TOTAL-SIZE"
      "ARRAY-TOTAL-SIZE-LIMIT"
      "ARRAYP"
      "ASH"
      "ASIN"
      "ASINH"
      "ASSERT"
      "ASSOC"
      "ASSOC-IF"
      "ASSOC-IF-NOT"
      "ATAN"
      "ATANH"
      "ATOM"
      "BIGNUM"
      "BIT"
      "BIT-AND"
      "BIT-ANDC1"
      "BIT-ANDC2"
      "BIT-EQV"
      "BIT-IOR"
      "BIT-NAND"
      "BIT-NOR"
      "BIT-NOT"
      "BIT-ORC1"
      "BIT-ORC2"
      "BIT-VECTOR"
      "BIT-VECTOR-P"
      "BIT-XOR"
      "BLOCK"
      "BOOLE"
      "BOOLE-1"
      "BOOLE-2"
      "BOOLE-AND"
      "BOOLE-ANDC1"
      "BOOLE-ANDC2"
      "BOOLE-C1"
      "BOOLE-C2"
      "BOOLE-CLR"
      "BOOLE-EQV"
      "BOOLE-IOR"
      "BOOLE-NAND"
      "BOOLE-NOR"
      "BOOLE-ORC1"
      "BOOLE-ORC2"
      "BOOLE-SET"
      "BOOLE-XOR"
      "BOTH-CASE-P"
      "BOUNDP"
      "BREAK"
      "BUTLAST"
      "BYTE"
      "BYTE-POSITION"
      "BYTE-SIZE"
      "CAAAAR"
      "CAAADR"
      "CAAAR"
      "CAADAR"
      "CAADDR"
      "CAADR"
      "CAAR"
      "CADAAR"
      "CADADR"
      "CADAR"
      "CADDAR"
      "CADDDR"
      "CADDR"
      "CADR"
      "CALL-ARGUMENTS-LIMIT"
      "CAR"
      "CASE"
      "CATCH"
      "CCASE"
      "CDAAAR"
      "CDAADR"
      "CDAAR"
      "CDADAR"
      "CDADDR"
      "CDADR"
      "CDAR"
      "CDDAAR"
      "CDDADR"
      "CDDAR"
      "CDDDAR"
      "CDDDDR"
      "CDDDR"
      "CDDR"
      "CDR"
      "CEILING"
      "CERROR"
      "CHAR"
      "CHAR-CODE"
      "CHAR-CODE-LIMIT"
      "CHAR-DOWNCASE"
      "CHAR-EQUAL"
      "CHAR-GREATERP"
      "CHAR-INT"
      "CHAR-LESSP"
      "CHAR-NAME"
      "CHAR-NOT-EQUAL"
      "CHAR-NOT-GREATERP"
      "CHAR-NOT-LESSP"
      "CHAR-UPCASE"
      "CHAR/="
      "CHAR<"
      "CHAR<="
      "CHAR="
      "CHAR>"
      "CHAR>="
      "CHARACTER"
      "CHARACTERP"
      "CHECK-TYPE"
      "CIS"
      "CLEAR-INPUT"
      "CLEAR-OUTPUT"
      "CLOSE"
      "CLRHASH"
      "CODE-CHAR"
      "COERCE"
      "COMPILATION-SPEED"
      "COMPILE"
      "COMPILE-FILE"
      "COMPILED-FUNCTION"
      "COMPILED-FUNCTION-P"
      "COMPLEX"
      "COMPLEXP"
      "CONCATENATE"
      "COND"
      "CONJUGATE"
      "CONS"
      "CONSP"
      "CONSTANTP"
      "COPY-ALIST"
      "COPY-LIST"
      "COPY-READTABLE"
      "COPY-SEQ"
      "COPY-SYMBOL"
      "COPY-TREE"
      "COS"
      "COSH"
      "COUNT"
      "COUNT-IF"
      "COUNT-IF-NOT"
      "CTYPECASE"
      "DECF"
      "DECLARATION"
      "DECLARE"
      "DECODE-FLOAT"
      "DECODE-UNIVERSAL-TIME"
      "DEFCONSTANT"
      "DEFINE-MODIFY-MACRO"
      "DEFINE-SETF-METHOD"
      "DEFMACRO"
      "DEFPARAMETER"
      "DEFSETF"
      "DEFSTRUCT"
      "DEFTYPE"
      "DEFUN"
      "DEFVAR"
      "DELETE"
      "DELETE-DUPLICATES"
      "DELETE-FILE"
      "DELETE-IF"
      "DELETE-IF-NOT"
      "DENOMINATOR"
      "DEPOSIT-FIELD"
      "DESCRIBE"
      "DIGIT-CHAR"
      "DIGIT-CHAR-P"
      "DIRECTORY"
      "DIRECTORY-NAMESTRING"
      "DISASSEMBLE"
      "DO"
      "DO*"
      "DO-ALL-SYMBOLS"
      "DO-EXTERNAL-SYMBOLS"
      "DO-SYMBOLS"
      "DOCUMENTATION"
      "DOLIST"
      "DOTIMES"
      "DOUBLE-FLOAT"
      "DOUBLE-FLOAT-EPSILON"
      "DOUBLE-FLOAT-NEGATIVE-EPSILON"
      "DPB"
      "DRIBBLE"
      "ECASE"
      "ED"
      "EIGHTH"
      "ELT"
      "ENCODE-UNIVERSAL-TIME"
      "ENDP"
      "ENOUGH-NAMESTRING"
      "EQ"
      "EQL"
      "EQUAL"
      "EQUALP"
      "ERROR"
      "ETYPECASE"
      "EVAL"
      "EVAL-WHEN"
      "EVALHOOK"
      "EVENP"
      "EVERY"
      "EXP"
      "EXPORT"
      "EXPT"
      "FBOUNDP"
      "FCEILING"
      "FFLOOR"
      "FIFTH"
      "FILE-AUTHOR"
      "FILE-LENGTH"
      "FILE-NAMESTRING"
      "FILE-POSITION"
      "FILE-WRITE-DATE"
      "FILL"
      "FILL-POINTER"
      "FIND"
      "FIND-ALL-SYMBOLS"
      "FIND-IF"
      "FIND-IF-NOT"
      "FIND-PACKAGE"
      "FIND-SYMBOL"
      "FINISH-OUTPUT"
      "FIRST"
      "FIXNUM"
      "FLET"
      "FLOAT"
      "FLOAT-DIGITS"
      "FLOAT-PRECISION"
      "FLOAT-RADIX"
      "FLOAT-SIGN"
      "FLOATP"
      "FLOOR"
      "FMAKUNBOUND"
      "FORCE-OUTPUT"
      "FORMAT"
      "FOURTH"
      "FRESH-LINE"
      "FROUND"
      "FTRUNCATE"
      "FTYPE"
      "FUNCALL"
      "FUNCTION"
      "FUNCTIONP"
      "GCD"
      "GENSYM"
      "GENTEMP"
      "GET"
      "GET-DECODED-TIME"
      "GET-DISPATCH-MACRO-CHARACTER"
      "GET-INTERNAL-REAL-TIME"
      "GET-INTERNAL-RUN-TIME"
      "GET-MACRO-CHARACTER"
      "GET-OUTPUT-STREAM-STRING"
      "GET-PROPERTIES"
      "GET-SETF-METHOD"
      "GET-SETF-METHOD-MULTIPLE-VALUE"
      "GET-UNIVERSAL-TIME"
      "GETF"
      "GETHASH"
      "GO"
      "GRAPHIC-CHAR-P"
      "HASH-TABLE"
      "HASH-TABLE-COUNT"
      "HASH-TABLE-P"
      "HOST-NAMESTRING"
      "IDENTITY"
      "IF"
      "IGNORE"
      "IGNORABLE"
      "IMAGPART"
      "IMPORT"
      "IN-PACKAGE"
      "INCF"
      "INLINE"
      "INPUT-STREAM-P"
      "INSPECT"
      "INTEGER"
      "INTEGER-DECODE-FLOAT"
      "INTEGER-LENGTH"
      "INTEGERP"
      "INTERN"
      "INTERNAL-TIME-UNITS-PER-SECOND"
      "INTERSECTION"
      "ISQRT"
      "KEYWORD"
      "KEYWORDP"
      "LABELS"
      "LAMBDA"
      "LAMBDA-LIST-KEYWORDS"
      "LAMBDA-PARAMETERS-LIMIT"
      "LAST"
      "LCM"
      "LDB"
      "LDB-TEST"
      "LDIFF"
      "LEAST-NEGATIVE-DOUBLE-FLOAT"
      "LEAST-NEGATIVE-LONG-FLOAT"
      "LEAST-NEGATIVE-SHORT-FLOAT"
      "LEAST-NEGATIVE-SINGLE-FLOAT"
      "LEAST-POSITIVE-DOUBLE-FLOAT"
      "LEAST-POSITIVE-LONG-FLOAT"
      "LEAST-POSITIVE-SHORT-FLOAT"
      "LEAST-POSITIVE-SINGLE-FLOAT"
      "LENGTH"
      "LET"
      "LET*"
      "LISP-IMPLEMENTATION-TYPE"
      "LISP-IMPLEMENTATION-VERSION"
      "LIST"
      "LIST*"
      "LIST-ALL-PACKAGES"
      "LIST-LENGTH"
      "LISTEN"
      "LISTP"
      "LOAD"
      "LOCALLY"
      "LOG"
      "LOGAND"
      "LOGANDC1"
      "LOGANDC2"
      "LOGBITP"
      "LOGCOUNT"
      "LOGEQV"
      "LOGIOR"
      "LOGNAND"
      "LOGNOR"
      "LOGNOT"
      "LOGORC1"
      "LOGORC2"
      "LOGTEST"
      "LOGXOR"
      "LONG-FLOAT"
      "LONG-FLOAT-EPSILON"
      "LONG-FLOAT-NEGATIVE-EPSILON"
      "LONG-SITE-NAME"
      "LOOP"
      "LOWER-CASE-P"
      "MACHINE-INSTANCE"
      "MACHINE-TYPE"
      "MACHINE-VERSION"
      "MACRO-FUNCTION"
      "MACROEXPAND"
      "MACROEXPAND-1"
      "MACROLET"
      "MAKE-ARRAY"
      "MAKE-BROADCAST-STREAM"
      "MAKE-CONCATENATED-STREAM"
      "MAKE-DISPATCH-MACRO-CHARACTER"
      "MAKE-ECHO-STREAM"
      "MAKE-HASH-TABLE"
      "MAKE-LIST"
      "MAKE-PACKAGE"
      "MAKE-PATHNAME"
      "MAKE-RANDOM-STATE"
      "MAKE-SEQUENCE"
      "MAKE-STRING"
      "MAKE-STRING-INPUT-STREAM"
      "MAKE-STRING-OUTPUT-STREAM"
      "MAKE-SYMBOL"
      "MAKE-SYNONYM-STREAM"
      "MAKE-TWO-WAY-STREAM"
      "MAKUNBOUND"
      "MAP"
      "MAPC"
      "MAPCAN"
      "MAPCAR"
      "MAPCON"
      "MAPHASH"
      "MAPL"
      "MAPLIST"
      "MASK-FIELD"
      "MAX"
      "MEMBER"
      "MEMBER-IF"
      "MEMBER-IF-NOT"
      "MERGE"
      "MERGE-PATHNAMES"
      "MIN"
      "MINUSP"
      "MISMATCH"
      "MOD"
      "MOST-NEGATIVE-DOUBLE-FLOAT"
      "MOST-NEGATIVE-FIXNUM"
      "MOST-NEGATIVE-LONG-FLOAT"
      "MOST-NEGATIVE-SHORT-FLOAT"
      "MOST-NEGATIVE-SINGLE-FLOAT"
      "MOST-POSITIVE-DOUBLE-FLOAT"
      "MOST-POSITIVE-FIXNUM"
      "MOST-POSITIVE-LONG-FLOAT"
      "MOST-POSITIVE-SHORT-FLOAT"
      "MOST-POSITIVE-SINGLE-FLOAT"
      "MULTIPLE-VALUE-BIND"
      "MULTIPLE-VALUE-CALL"
      "MULTIPLE-VALUE-LIST"
      "MULTIPLE-VALUE-PROG1"
      "MULTIPLE-VALUE-SETQ"
      "MULTIPLE-VALUES-LIMIT"
      "NAME-CHAR"
      "NAMESTRING"
      "NBUTLAST"
      "NCONC"
      ;  "NIL"
      "NINTERSECTION"
      "NINTH"
      "NOT"
      "NOTANY"
      "NOTEVERY"
      "NOTINLINE"
      "NRECONC"
      "NREVERSE"
      "NSET-DIFFERENCE"
      "NSET-EXCLUSIVE-OR"
      "NSTRING-CAPITALIZE"
      "NSTRING-DOWNCASE"
      "NSTRING-UPCASE"
      "NSUBLIS"
      "NSUBST"
      "NSUBST-IF"
      "NSUBST-IF-NOT"
      "NSUBSTITUTE"
      "NSUBSTITUTE-IF"
      "NSUBSTITUTE-IF-NOT"
      "NTH"
      "NTHCDR"
      "NULL"
      "NUMBER"
      "NUMBERP"
      "NUMERATOR"
      "NUNION"
      "ODDP"
      "OPEN"
      "OPTIMIZE"
      "OR"
      "OTHERWISE"
      "OUTPUT-STREAM-P"
      "PACKAGE"
      "PACKAGE-NAME"
      "PACKAGE-NICKNAMES"
      "PACKAGE-SHADOWING-SYMBOLS"
      "PACKAGE-USE-LIST"
      "PACKAGE-USED-BY-LIST"
      "PACKAGEP"
      "PAIRLIS"
      "PARSE-INTEGER"
      "PARSE-NAMESTRING"
      "PATHNAME"
      "PATHNAME-DEVICE"
      "PATHNAME-DIRECTORY"
      "PATHNAME-HOST"
      "PATHNAME-NAME"
      "PATHNAME-TYPE"
      "PATHNAME-VERSION"
      "PATHNAMEP"
      "PEEK-CHAR"
      "PHASE"
      "PI"
      "PLUSP"
      "POP"
      "POSITION"
      "POSITION-IF"
      "POSITION-IF-NOT"
      "PPRINT"
      "PRIN1"
      "PRIN1-TO-STRING"
      "PRINC"
      "PRINC-TO-STRING"
      "PRINT"
      "PROBE-FILE"
      "PROCLAIM"
      "PROG"
      "PROG*"
      "PROG1"
      "PROG2"
      "PROGN"
      "PROGV"
      "PSETF"
      "PSETQ"
      "PUSH"
      "PUSHNEW"
      "QUOTE"
      "RANDOM"
      "RANDOM-STATE"
      "RANDOM-STATE-P"
      "RASSOC"
      "RASSOC-IF"
      "RASSOC-IF-NOT"
      "RATIO"
      "RATIONAL"
      "RATIONALIZE"
      "RATIONALP"
      "READ"
      "READ-BYTE"
      "READ-CHAR"
      "READ-CHAR-NO-HANG"
      "READ-DELIMITED-LIST"
      "READ-FROM-STRING"
      "READ-LINE"
      "READ-PRESERVING-WHITESPACE"
      "READTABLE"
      "READTABLEP"
      "REALPART"
      "REDUCE"
      "REM"
      "REMF"
      "REMHASH"
      "REMOVE"
      "REMOVE-DUPLICATES"
      "REMOVE-IF"
      "REMOVE-IF-NOT"
      "REMPROP"
      "RENAME-FILE"
      "RENAME-PACKAGE"
      "REPLACE"
      "REST"
      "RETURN"
      "RETURN-FROM"
      "REVAPPEND"
      "REVERSE"
      "ROOM"
      "ROTATEF"
      "ROUND"
      "RPLACA"
      "RPLACD"
      "SAFETY"
      "SATISFIES"
      "SBIT"
      "SCALE-FLOAT"
      "SCHAR"
      "SEARCH"
      "SECOND"
      "SEQUENCE"
      "SET"
      "SET-DIFFERENCE"
      "SET-DISPATCH-MACRO-CHARACTER"
      "SET-EXCLUSIVE-OR"
      "SET-MACRO-CHARACTER"
      "SET-SYNTAX-FROM-CHAR"
      "SETF"
      "SETQ"
      "SEVENTH"
      "SHADOW"
      "SHADOWING-IMPORT"
      "SHIFTF"
      "SHORT-FLOAT"
      "SHORT-FLOAT-EPSILON"
      "SHORT-FLOAT-NEGATIVE-EPSILON"
      "SHORT-SITE-NAME"
      "SIGNED-BYTE"
      "SIGNUM"
      "SIMPLE-ARRAY"
      "SIMPLE-BIT-VECTOR"
      "SIMPLE-BIT-VECTOR-P"
      "SIMPLE-STRING"
      "SIMPLE-STRING-P"
      "SIMPLE-VECTOR"
      "SIMPLE-VECTOR-P"
      "SIN"
      "SINGLE-FLOAT"
      "SINGLE-FLOAT-EPSILON"
      "SINGLE-FLOAT-NEGATIVE-EPSILON"
      "SINH"
      "SIXTH"
      "SLEEP"
      "SOFTWARE-TYPE"
      "SOFTWARE-VERSION"
      "SOME"
      "SORT"
      "SPACE"
      "SPECIAL"
      "SPECIAL-FORM-P"
      "SPEED"
      "SQRT"
      "STABLE-SORT"
      "STANDARD-CHAR"
      "STANDARD-CHAR-P"
      "STEP"
      "STREAM"
      "STREAM-ELEMENT-TYPE"
      "STREAMP"
      "STRING"
      "STRING-CAPITALIZE"
      "STRING-DOWNCASE"
      "STRING-EQUAL"
      "STRING-GREATERP"
      "STRING-LEFT-TRIM"
      "STRING-LESSP"
      "STRING-NOT-EQUAL"
      "STRING-NOT-GREATERP"
      "STRING-NOT-LESSP"
      "STRING-RIGHT-TRIM"
      "STRING-TRIM"
      "STRING-UPCASE"
      "STRING/="
      "STRING<"
      "STRING<="
      "STRING="
      "STRING>"
      "STRING>="
      "STRINGP"
      "STRUCTURE"
      "SUBLIS"
      "SUBSEQ"
      "SUBSETP"
      "SUBST"
      "SUBST-IF"
      "SUBST-IF-NOT"
      "SUBSTITUTE"
      "SUBSTITUTE-IF"
      "SUBSTITUTE-IF-NOT"
      "SUBTYPEP"
      "SVREF"
      "SXHASH"
      "SYMBOL"
      "SYMBOL-FUNCTION"
      "SYMBOL-NAME"
      "SYMBOL-PACKAGE"
      "SYMBOL-PLIST"
      "SYMBOL-VALUE"
      "SYMBOLP"
      ;  "T"
      "TAGBODY"
      "TAILP"
      "TAN"
      "TANH"
      "TENTH"
      "TERPRI"
      "THE"
      "THIRD"
      "THROW"
      "TIME"
      "TRACE"
      "TREE-EQUAL"
      "TRUENAME"
      "TRUNCATE"
      "TYPE"
      "TYPE-OF"
      "TYPECASE"
      "TYPEP"
      "UNEXPORT"
      "UNINTERN"
      "UNION"
      "UNLESS"
      "UNREAD-CHAR"
      "UNSIGNED-BYTE"
      "UNTRACE"
      "UNUSE-PACKAGE"
      "UNWIND-PROTECT"
      "UPPER-CASE-P"
      "USE-PACKAGE"
      "USER-HOMEDIR-PATHNAME"
      "VALUES"
      "VALUES-LIST"
      "VARIABLE"
      "VECTOR"
      "VECTOR-POP"
      "VECTOR-PUSH"
      "VECTOR-PUSH-EXTEND"
      "VECTORP"
      "WARN"
      "WHEN"
      "WITH-INPUT-FROM-STRING"
      "WITH-OPEN-FILE"
      "WITH-OPEN-STREAM"
      "WITH-OUTPUT-TO-STRING"
      "WRITE"
      "WRITE-BYTE"
      "WRITE-CHAR"
      "WRITE-LINE"
      "WRITE-STRING"
      "WRITE-TO-STRING"
      "Y-OR-N-P"
      "YES-OR-NO-P"
      "ZEROP"
      
      ;;; ANSI Stuff
      ;"*MODULES*" 
      "ARRAY-DISPLACEMENT" 
      "BASE-CHAR" 
      "BOOLEAN" 
      "CLASS" 
      "COMPILER-MACRO" 
      "COPY-STRUCTURE" 
      "DEFINE-SETF-EXPANDER" 
      "DEFINE-SYMBOL-MACRO" 
      "ENSURE-DIRECTORIES-EXIST" 
      "EXTENDED-CHAR" 
      "GET-SETF-EXPANSION" 
      "METHOD" 
      ;"PROVIDE" 
      "READER-ERROR" 
      ;"REQUIRE" 
      "SIMPLE-CONDITION-FORMAT-CONTROL" 
      "SPECIAL-OPERATOR-P" 
      "STRUCTURE-OBJECT" )))

(let* ((pkg *common-lisp-package*)
       (etab (pkg.etab pkg))
       (itab (pkg.itab pkg)))
  (without-interrupts
   (dolist (name '#.%lisp-symbols%)
     (let* ((namelen (length name)))
       (multiple-value-bind (found-int symbol int-offset)
                            (%get-htab-symbol name namelen itab)
         (multiple-value-bind (found-ext ignore ext-offset)
                              (%get-htab-symbol name namelen etab)
           (declare (ignore ignore))
           (if found-int                ; This shouldn't happen.
             (progn
               (setf (%svref (car itab) int-offset) (%unbound-marker-8))
               (%htab-add-symbol symbol etab ext-offset))
             (unless found-ext
               (%add-symbol name pkg int-offset ext-offset t)))))))))
