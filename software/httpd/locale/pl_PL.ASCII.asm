text_port_busy	db	"Blad, port zajety.", VARIABLE_ASCII_CODE_RETURN

variable_httpd_answer_200		db	'HTTP/1.1 200 OK', VARIABLE_ASCII_CODE_NEWLINE
					db	'Server: Cyjon OS (http://www.wataha.net/)', VARIABLE_ASCII_CODE_NEWLINE
					db	'Content-type: text/html', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_NEWLINE
					db	'<!DOCTYPE html>', VARIABLE_ASCII_CODE_NEWLINE
					db	'<html>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '<head>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<title>WWW Serwer na Cyjon OS</title>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<style>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '* { font-family: Verdana, Helvetica, Arial, serif; }', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, 'p { font-size: 1em; }', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '</style>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '</head>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '<body>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<h1>Cyjon OS w', VARIABLE_KERNEL_VERSION, '</h1>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<hr /><p>httpd w0.7</p>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '</body>', VARIABLE_ASCII_CODE_NEWLINE
					db	'</html>'
variable_httpd_answer_200_end:
					db	VARIABLE_ASCII_CODE_TERMINATOR

variable_httpd_answer_404		db	'HTTP/1.1 404 Not found', VARIABLE_ASCII_CODE_NEWLINE
					db	'Server: Cyjon OS (http://www.wataha.net/)', VARIABLE_ASCII_CODE_NEWLINE
					db	'Content-type: text/html', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_NEWLINE
					db	'<!DOCTYPE html>', VARIABLE_ASCII_CODE_NEWLINE
					db	'<html>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '<head>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<title>WWW Serwer na Cyjon OS</title>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<style>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '* { font-family: Verdana, Helvetica, Arial, serif; }', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '</style>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '</head>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '<body>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<h1>404</h1>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<h3>Pliku nie znaleziono.</h3>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, VARIABLE_ASCII_CODE_TAB, '<hr /><p>httpd w0.7</p>', VARIABLE_ASCII_CODE_NEWLINE
					db	VARIABLE_ASCII_CODE_TAB, '</body>', VARIABLE_ASCII_CODE_NEWLINE
					db	'</html>'
variable_httpd_answer_404_end:
					db	VARIABLE_ASCII_CODE_TERMINATOR
