	IFND	RESOURCES_MISC_I
RESOURCES_MISC_I	SET	1
	IFND	EXEC_TYPES_I
	INCLUDE	"exec/types.i"
	ENDC
	IFND	EXEC_LIBRARIES_I
	INCLUDE	"exec/libraries.i"
	ENDC
MR_SERIALPORT	EQU	0
MR_SERIALBITS	EQU	1
MR_PARALLELPORT	EQU	2
MR_PARALLELBITS	EQU	3
NUMMRTYPES	EQU	4
	STRUCTURE	MiscResource,LIB_SIZE
	STRUCT	mr_AllocArray,4*NUMMRTYPES
	LABEL	mr_Sizeof
	LIBINIT	LIB_BASE
	LIBDEF	MR_ALLOCMISCRESOURCE
	LIBDEF	MR_FREEMISCRESOURCE
MISCNAME	MACRO
	DC.B	'misc.resource',0
	ENDM
	ENDC
