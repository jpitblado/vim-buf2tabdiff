" autoload/buf2tabdiff.vim
" Maintainer:   Jeff Pitblado <jpitblado at stata.com>
" Last Change:  17feb2015

" This script was heavily influenced/inspired by tab-multi-diff.vim
" referenced in
" http://www.xenomachina.com/2012/02/multi-diff-with-vim-andor-git.html

if exists("g:loaded_buf2tabdiff") || &cp
	finish
endif
let g:loaded_buf2tabdiff = 1

function! s:put_buf()
	" buf is the index for the current buffer
	let buf = bufnr("%")
	if s:SecondBuf
		" go to the last tab page
		tablast
		" split vertically
		vsplit
		" go to the other window
		wincmd w
	else
		" open current buffer in new tab page
		tab split
		" move current tab to the end
		tabmove
	endif
	" reset s:SecondBuf
	let s:SecondBuf = ! s:SecondBuf
	" pull the buffer into the current window
	execute 'buffer ' . buf
	" make the current window part of the diff windows
	diffthis
	" go to the first tab page
	tabfirst
endfunction

function! buf2tabdiff#now()
	" initialize s:SecondBuf -- indicates buffer with an even index
	let s:SecondBuf = 0
	" for each file in the argument list, call s:put_buf()
	argdo call s:put_buf()
	" close the initial tab page, we are not going to use it
	tabclose
endfun

" end: autoload/buf2tabdiff.vim
