text_init	db	VARIABLE_ASCII_CODE_ENTER, VARIABLE_ASCII_CODE_NEWLINE
		db	"INIT: ", VARIABLE_PROGRAM_VERSION, " gotowy.", VARIABLE_ASCII_CODE_ENTER, VARIABLE_ASCII_CODE_NEWLINE, VARIABLE_ASCII_CODE_TERMINATOR
text_no_process	db	"INIT: Brak wolnej pamieci do uruchomienia nowego procesu.", VARIABLE_ASCII_CODE_RETURN
