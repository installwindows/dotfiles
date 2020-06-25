autocmd BufNewFile  *.html  call    Generate_html()

function! Generate_html()
	call append("0", "<!DOCTYPE HTML>")
	call append("$", "<html>")
	call append("$", "<head>")
	call append("$", '    <meta name="viewport" content="width=device-width, initial-scale=1.0">')
	call append("$", '    <meta charset="utf-8">')
	call append("$", '    <style type="text/css">')
	call append("$", '        html, body {margin: 0; padding: 0;}')
	call append("$", '        body {')
	call append("$", '            margin-top: 10vh;')
	call append("$", '            margin-left: 10vw;')
	call append("$", '        }')
	call append("$", '    </style>')
	call append("$", '</head>')
	call append("$", '<body>')
	call append("$", '</body>')
	call append("$", '</html>')
endfunction
