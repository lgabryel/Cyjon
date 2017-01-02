; Copyright (C) 2013-2023 Wataha.net
; All Rights Reserved
;
; LICENSE Creative Commons BY-NC-ND 4.0
; See LICENSE.TXT
;
; Main developer:
;	Andrzej (akasei) Adamczyk [e-mail: akasei from wataha.net]
;
; Font by Carramba/Flabra
;-------------------------------------------------------------------------------

; Use:
; nasm - http://www.nasm.us/

matrix_font_semaphore	db	VARIABLE_TRUE
matrix_font_x_in_pixels	dq	8
matrix_font_y_in_pixels	dq	8

; autor: Paweł Szczesniak (flabra, carramba)
; modyfikacje i rozpakowanie: Andrzej Adamczyk (akasei)

align	0x0100

matrix_font:
	; znaki specjalne
	times	32 * (8 + 1) * 8	db	VARIABLE_EMPTY

	; spacja
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; !
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; "
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; #
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; $
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,1,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x01,	0,0,0,1,0,1,0,0
	db	0x01,	0,1,1,1,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; %
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,0,0,0,1,0
	db	0x01,	0,1,1,0,0,1,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,0,1,1,0
	db	0x01,	0,1,0,0,0,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; &
	db	0x01,	0,0,0,1,1,1,0,0
	db	0x01,	0,0,1,0,0,0,1,0
	db	0x01,	0,0,0,1,1,1,0,0
	db	0x01,	0,0,1,0,0,0,1,0
	db	0x01,	0,1,0,0,0,1,1,1
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,0,1,1
	db	0x00,	0,0,0,0,0,0,0,0

	; '
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; (
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; )
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; *
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; +
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; ,
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0

	; -
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; .
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,0,0,1,1,0,0,0

	; /
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,1,1,0
	db	0x01,	0,1,0,0,1,0,1,0
	db	0x01,	0,1,0,1,0,0,1,0
	db	0x01,	0,1,1,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 1
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,0,1,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 2
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 3
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,0,0,1,1,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 4
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,1,1,0,0
	db	0x01,	0,0,0,1,0,1,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 5
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 6
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 7
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 8
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; 9
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; :
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; ;
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0

	; <
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; =
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; >
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; ?
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; @
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,1,1,0,1,0
	db	0x01,	0,1,0,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; A
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; B
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; C
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; D
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; E
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; F
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; G
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; H
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; I
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; J
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; K
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,1,0,0,0
	db	0x01,	0,1,1,1,0,0,0,0
	db	0x01,	0,1,0,0,1,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; L
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; M
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,0,0,1,1,0
	db	0x01,	0,1,0,1,1,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; N
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,0,0,0,1,0
	db	0x01,	0,1,0,1,0,0,1,0
	db	0x01,	0,1,0,0,1,0,1,0
	db	0x01,	0,1,0,0,0,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; O
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; P
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; Q
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,1,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,1,0,0

	; R
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; S
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; T
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; U
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; V
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; W
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,1,1,0,1,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; X
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; Y
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	1,0,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; Z
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; [
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; "\"
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; ]
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; ^
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,1,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; _
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,1,0

	; `
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; a
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; b
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; c
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; d
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; e
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; f
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,1,1,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0

	; g
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,0,0

	; h
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; i
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; j
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,0,0,0

	; k
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,1,0,0,0
	db	0x01,	0,1,1,1,0,0,0,0
	db	0x01,	0,1,0,0,1,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; l
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,0,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; m
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,0,1,0,0,0
	db	0x01,	0,1,0,1,0,1,0,0
	db	0x01,	0,1,0,1,0,1,0,0
	db	0x01,	0,1,0,1,0,1,0,0
	db	0x01,	0,1,0,1,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; n
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; o
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; p
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0

	; q
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,1,1,1,1,0
	db	0x01,	0,0,0,0,0,0,1,0
	db	0x01,	0,0,0,0,0,0,1,0

	; r
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,1,1,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; s
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x01,	0,1,0,0,0,0,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,1,1,1,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; t
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; u
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; v
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; w
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,1,0,1,0,0
	db	0x01,	0,0,1,0,1,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; x
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,0,0,1,1,0,0,0
	db	0x01,	0,0,1,0,0,1,0,0
	db	0x01,	0,1,0,0,0,0,1,0
	db	0x00,	0,0,0,0,0,0,0,0

	; y
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,1,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,1,0,0
	db	0x01,	0,0,0,0,0,1,0,0
	db	0x01,	0,0,1,1,1,0,0,0

	; z
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,1,0,0,0,0,0
	db	0x01,	0,1,1,1,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; {
	db	0x01,	0,0,0,0,1,1,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,1,1,0,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,0,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; |
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x01,	0,0,0,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; }
	db	0x01,	0,0,1,1,0,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,0,1,1,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0x01,	0,0,0,0,1,0,0,0
	db	0001,	0,0,1,1,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0

	; ~
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x01,	0,0,1,1,0,0,1,0
	db	0x01,	0,1,0,0,1,1,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
	db	0x00,	0,0,0,0,0,0,0,0
