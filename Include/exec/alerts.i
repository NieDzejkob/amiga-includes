	IFND	EXEC_ALERTS_I
EXEC_ALERTS_I	=	1
SB_ALERTWACK	=	1
SF_ALERTWACK	=	1<<1
ALERT	MACRO
	MOVEM.L	D7/A5/A6,-(SP)
	MOVE.L	#\1,D7
	IFNC	'\2',''
	LEA	\2,A5
	ENDC
	MOVE.L	4,A6
	JSR	_LVOAlert(A6)
	MOVEM.L	(SP)+,D7/A5/A6
	ENDM
AT_DeadEnd	=	$80000000
AT_Recovery	=	$00000000
AG_NoMemory	=	$00010000
AG_MakeLib	=	$00020000
AG_OpenLib	=	$00030000
AG_OpenDev	=	$00040000
AG_OpenRes	=	$00050000
AG_IOError	=	$00060000
AG_NoSignal	=	$00070000
AO_ExecLib	=	$00008001
AO_GraphicsLib	=	$00008002
AO_LayersLib	=	$00008003
AO_Intuition	=	$00008004
AO_MathLib	=	$00008005
AO_CListLib	=	$00008006
AO_DOSLib	=	$00008007
AO_RAMLib	=	$00008008
AO_IconLib	=	$00008009
AO_ExpansionLib	=	$0000800A
AO_AudioDev	=	$00008010
AO_ConsoleDev	=	$00008011
AO_GamePortDev	=	$00008012
AO_KeyboardDev	=	$00008013
AO_TrackDiskDev	=	$00008014
AO_TimerDev	=	$00008015
AO_CIARsrc	=	$00008020
AO_DiskRsrc	=	$00008021
AO_MiscRsrc	=	$00008022
AO_BootStrap	=	$00008030
AO_Workbench	=	$00008031
AN_ExecLib	=	$01000000
AN_ExcptVect	=	$81000001
AN_BaseChkSum	=	$81000002
AN_LibChkSum	=	$81000003
AN_LibMem	=	$81000004
AN_MemCorrupt	=	$81000005
AN_IntrMem	=	$81000006
AN_InitAPtr	=	$81000007
AN_SemCorrupt	=	$81000008
AN_FreeTwice	=	$81000009
AN_BogusExcpt	=	$8100000A
AN_GraphicsLib	=	$02000000
AN_GfxNoMem	=	$82010000
AN_LongFrame	=	$82010006
AN_ShortFrame	=	$82010007
AN_TextTmpRas	=	$02010009
AN_BltBitMap	=	$8201000A
AN_RegionMemory	=	$8201000B
AN_MakeVPort	=	$82010030
AN_GfxNoLCM	=	$82011234
AN_LayersLib	=	$03000000
AN_LayersNoMem	=	$83010000
AN_Intuition	=	$04000000
AN_GadgetType	=	$84000001
AN_BadGadget	=	$04000001
AN_CreatePort	=	$84010002
AN_ItemAlloc	=	$04010003
AN_SubAlloc	=	$04010004
AN_PlaneAlloc	=	$84010005
AN_ItemBoxTop	=	$84000006
AN_OpenScreen	=	$84010007
AN_OpenScrnRast	=	$84010008
AN_SysScrnType	=	$84000009
AN_AddSWGadget	=	$8401000A
AN_OpenWindow	=	$8401000B
AN_BadState	=	$8400000C
AN_BadMessage	=	$8400000D
AN_WeirdEcho	=	$8400000E
AN_NoConsole	=	$8400000F
AN_MathLib	=	$05000000
AN_CListLib	=	$06000000
AN_DOSLib	=	$07000000
AN_StartMem	=	$07010001
AN_EndTask	=	$07000002
AN_QPktFail	=	$07000003
AN_AsyncPkt	=	$07000004
AN_FreeVec	=	$07000005
AN_DiskBlkSeq	=	$07000006
AN_BitMap	=	$07000007
AN_KeyFree	=	$07000008
AN_BadChkSum	=	$07000009
AN_DiskError	=	$0700000A
AN_KeyRange	=	$0700000B
AN_BadOverlay	=	$0700000C
AN_RAMLib	=	$08000000
AN_BadSegList	=	$08000001
AN_IconLib	=	$09000000
AN_ExpansionLib	=	$0A000000
AN_BadExpansionFree	=	$0A000001
AN_AudioDev	=	$10000000
AN_ConsoleDev	=	$11000000
AN_GamePortDev	=	$12000000
AN_KeyboardDev	=	$13000000
AN_TrackDiskDev	=	$14000000
AN_TDCalibSeek	=	$14000001
AN_TDDelay	=	$14000002
AN_TimerDev	=	$15000000
AN_TMBadReq	=	$15000001
AN_TMBadSupply	=	$15000002
AN_CIARsrc	=	$20000000
AN_DiskRsrc	=	$21000000
AN_DRHasDisk	=	$21000001
AN_DRIntNoAct	=	$21000002
AN_MiscRsrc	=	$22000000
AN_BootStrap	=	$30000000
AN_BootError	=	$30000001
AN_Workbench	=	$31000000
AN_DiskCopy	=	$32000000
	ENDC
