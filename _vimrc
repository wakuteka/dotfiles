" vim:set ts=9 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)
"
"-------------------------------------------------------------------------------
" for the first time in editing vimrc, you should anble syntax highlighing.
syntax on
set number
"
"-------------------------------------------------------------------------------
" neocomplecache settings
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_disable_auto_complete = 0
"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
function! s:check_back_space()"{{{
let col = col('.') - 1
return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
"
"-------------------------------------------------------------------------------
" Change highlight colors 
highlight PmenuSel ctermfg=3 ctermbg=Darkgrey
highlight Pmenu ctermfg=green ctermbg=Darkgrey
"-------------------------------------------------------------------------------
" Enable backspace
"   http://www15.ocn.ne.jp/~tusr/vim/vim_text2.html#mozTocId195366
set backspace=indent,eol,start 
"
"-------------------------------------------------------------------------------
" Enable autoincert NewLine 
set textwidth=90
"
"-------------------------------------------------------------------------------
" shortcut mappings
nnoremap <space>w :<C-u>write<Return>
nnoremap <space>q :<C-u>wq!<Return>
nnoremap <space>x :<C-u>quit!<Return>
nnoremap <space>o :<C-u>open<space>
nnoremap <space>s :<C-u>saveas<space>
nnoremap <space>h :<C-u>help<space>
"
"-------------------------------------------------------------------------------
" " http://vim-users.jp/2009/09/hack74/
"           want to jump this URL using gf 
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
" " Load .gvimrc after .vimrc edited at GVim.
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
" 
" for goto file
 set suffixesadd=.Rnw
 set suffixesadd=.sty
"
" for project.vim
let g:proj_window_width = 30
" :let g:proj_flags = "imstc"
let g:proj_run1='!git add %f'
let g:proj_run_fold1='!git add %f'

let g:proj_run3='!git status'
 :nmap <silent> <space>p <Plug>ToggleProject
" :nmap <silent> <space>P :Project<CR>
 autocmd BufAdd .vimprojects silent! %foldopen!
" 
 set autowrite
" this shows **% on the right lower cornor
set ruler
set formatoptions=tcqr
" 
" command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))
" set modeline
" let mapleader="<space>" "{{{
nnoremap <space>qa :<C-u>wqall<Return>
" nnoremap <space>d :<C-u>execute<space>'normal<space>a'.strftime('20%y-%m-%d')<Return>
" nnoremap <space>e :<C-u>enew<Return>
" nnoremap <space>i <Insert><Return><Up>
" "}}}
" 
" " for smartchr.vim: http://www.vim.org/scripts/script.php?script_id=2290"/*{{{*/
" " はじめの文字は入力と同じにしないと、コピペで化ける
" inoremap <expr> < smartchr#loop('<', ' < ', ' <= ', '<=')
" inoremap <expr> > smartchr#loop('>', ' > ', ' >= ', '>=')
" inoremap <expr> - smartchr#loop('-', '--', '->')
" inoremap <expr> ! smartchr#loop('!', ' != ')
" inoremap <expr> = smartchr#one_of('=', ' = ', ' == ')"/*}}}*/
" 
" "UIカスタマイズ系  "{{{
" set nohlsearch
set tabstop=2
set shiftwidth=2
" set noshowmatch
" inoremap <C-s> <Esc>:w<Return>
" noremap <C-s> :w<Return>
" inoremap <F7> <Esc>:!
" noremap <F7> :!
" noremap <F2> <Esc>:e ./<Enter>
" "noremap <F2> :e ./<Enter>
" noremap <F6> :q<Enter>
filetype on
" " http://www.machu.jp/diary/20040424.html#p01
" "}}}
" 
" " for vss.vim: Vim Speaks statictics"{{{
" "R() :execute ':.! R -q --save'
" nnoremap <F2> :call R()<Return><Esc>
" inoremap <F2> <Esc>:call R()<Return><Esc>
" vnoremap <F2> ::call Rv()<Return>
" vnoremap <F2> :!R -q --save<Return>'}"}}}
" "set complete+=k~/.vim/Rcomp
" 
" "入力支援系 "{{{1
" set clipboard+=unnamed
" inoremap ( ()<left>
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap [ []<left>
" "[3.1]if you want to make complete to perl module names, add below lines.
" "set iskeyword+=:
" "set iskeyword+=.
" "set complete+=k~/.vim/perlmods
" 
set foldmethod=marker
" let g:xml_syntax_folding = 1
" set incsearch
" nnoremap <silent> <F3> :call BufferList()<Return>
" "inoremap ; <Enter>
" "inoremap <Ctrl-;> ;
" "}}} ---------------------------------------------------------------------------
" 
" 
" 
" "移動系  "{{{1
" 
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>
" noremap j gj
" noremap k gk
" noremap <Space> <Esc>gt
" noremap g<Space> <Esc>gT
" 
" "}}} "---------------------------------------------------------------------------
" if &t_Co > 1
"    syntax enable
" endif
" 
" set runtimepath+=~/.vim/doc/
" set lcs=tab:>-,trail:-
" autocmd FileType c let b:surround_45 = "/* \r */"
" autocmd FileType h let b:surround_45 = "/* \r */"
" autocmd FileType css let b:surround_45 = "<!-- \r -->"
" autocmd FileType c set cindent
" autocmd FileType vimperator set syntax=vim
" autocmd FileType R set syntax=R
" autocmd FileType snw set filetype=html
" "autocmd FileType txt set syntax=hatena
" 
" "see also ~/diary/.vimrc
" 
" "for hw.pl
" set runtimepath+=~/.vim/ftplugin/
" set runtimepath+=~/.vim/syntax/
" set runtimepath+=~/.vim/hatena
" let g:hatena_user='wakuteka'
" 
" " for local .vimrc 
" set exrc
" 
" 
" " for skk.vim"{{{
" let skk_jisyo = '~/.skk-jisyo'
" let skk_large_jisyo = '~/Library/AquaSKK/SKK-JISYO.L'
" let skk_auto_save_jisyo = 1
" let skk_keep_state = 0
" let skk_egg_like_newline = 1
" let skk_show_annotation = 1
" let skk_use_face = 1"}}}
" 
" " for VIM-LaTeX from http://alohakun.blog7.fc2.com/blog-entry-60.html"{{{
" " REQUIRED. This makes vim invoke latex-suite when you open a tex file.
" filetype plugin on
" 
" " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
" set shellslash
" 
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse latex-suite. Set your grep
" " program to alway generate a file-name.
" set grepprg=grep\ -nH\ $*
" 
" " OPTIONAL: This enables automatic indentation as you type.
" filetype indent on
" set smartindent
" 
" " 各自の環境に合わせた .tex ファイルを dvi ファイルにコンパイルするコマンドに，適宜置き換えてください． (Vine Linux 3.1 の場合)
" let g:Tex_CompileRule_dvi = 'platex $*'
" 
" " 同様に，dvi ファイルのビューワー
" let g:Tex_ViewRule_dvi = 'xdvi'"}}}
" 
"set columns=120
"set paste
" 
" " [lang] vi settings for Java
" " http://builder.japan.zdnet.com/news/story/0,3800079086,20363633,00.htm
" set sm
" set ai
" let java_highlight_all=1
" let java_highlight_functions="style"
" let java_allow_cpp_keywords=1
" 
" " http://d.hatena.ne.jp/over80/20090305/1236264851
" 
" autocmd FileType python setl autoindent
" autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
" 
