	ifndef CLEANUP_MODULE
	define CLEANUP_MODULE
;-------------------------------------------------------------------------------
; Standard CE cleanup module definitions and references
;-------------------------------------------------------------------------------
	.assume	adl=1

	define	.cleanup,space=ram
	segment .cleanup

	res	4,(iy+9)        ; onInterrupt,(iy+onFlags)
	set	0,(iy+3)        ; graphDraw,(iy+graphFlags)
	call	%0020808        ; _ClrLCDFull
	call	%0020828        ; _HomeUp
	call	%0021A3C        ; _DrawStatusBar

;-------------------------------------------------------------------------------
; End Standard Cleanup Module
;-------------------------------------------------------------------------------

	endif
	end

