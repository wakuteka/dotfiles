" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

" for smartchr.vim: http://www.vim.org/scripts/script.php?script_id=2290"{{{
inoremap <expr> < smartchr#loop('<', '<=')
inoremap <expr> > smartchr#loop('>', '>=')
"inoremap <expr> _ smartchr#loop(' <- ', '_')
inoremap <expr> = smartchr#one_of(' = ', ' => ', ' == ', '=')"}}}

"UIカスタマイズ系 " "{{{
set number
set nohlsearch
set tabstop=2
set shiftwidth=2
set noshowmatch
inoremap <C-s> <Esc>:w<Return>
noremap <C-s> :w<Return>
inoremap <F7> <Esc>:!
noremap <F7> :!
noremap <F2> <Esc>:e ./<Enter>
"noremap <F2> :e ./<Enter>
noremap <F6> :q<Enter>
set autoindent
filetype on"}}}

" for vss.vim: Vim Speaks statictics"{{{
"R() :execute ':.! R -q --save'
"nnoremap <F2> :call R()<Return><Esc>
"inoremap <F2> <Esc>:call R()<Return><Esc>
"vnoremap <F2> ::call Rv()<Return>
"vnoremap <F2> :!R -q --save<Return>'}"}}}

"入力支援系 "{{{1
set clipboard=unnamed
inoremap ( ()<left>
"inoremap < <><left>
"inoremap " ""<left>
inoremap ' ''<left>
inoremap [ []<left>
"[3.1]if you want to make complete to perl module names, add below lines.
set iskeyword+=:
set iskeyword+=.
set complete+=k~/.vim/perlmods
set complete+=k~/.vim/Rcomp
set matchpairs+=<:>
set foldmethod=marker
let g:xml_syntax_folding = 1
set incsearch
nnoremap <silent> <F3> :call BufferList()<Return>
"inoremap ; <Enter>
"inoremap <Ctrl-;> ;
"}}} ---------------------------------------------------------------------------

let mapleader="<space>""{{{1
nnoremap <space>w :<C-u>write<Return>
nnoremap <space>s :<C-u>sav<space>
nnoremap <space>q :<C-u>quit<Return>
nnoremap <space>x :<C-u>quit!<Return>
nnoremap <space>e :<C-u>enew<Return>
"}}}

"移動系  "{{{1

nnoremap 9 $
inoremap <C-h> <BS>
inoremap <C-k> <Esc>
inoremap <C-l> <Del>
noremap j gj
noremap k gk
noremap <Space> <Esc>gt
noremap g<Space> <Esc>gT
set autochdir

"}}} "---------------------------------------------------------------------------

set runtimepath+=~/.vim/doc/
set runtimepath+=~/.vim/ftplugin/
