function! CompileSCSS()
	let f = expand("%:r")
	silent exe ":! scss % " . f . ".css"
endfunction
au BufWritePost *.scss call CompileSCSS()
