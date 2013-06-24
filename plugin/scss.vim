function! CompileSCSS()
	let f = expand("%:r")
	silent exe ":! scss % " . f . ".css"
    silent exe ":! ~/.vim/tools/cssminify " . f . ".css > " . f . ".css.swp"
    silent exe ":! mv " . f . ".css.swp " . f . ".css"
endfunction
au BufWritePost *.scss call CompileSCSS()
