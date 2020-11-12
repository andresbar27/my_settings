set nocompatible   " be iMproved, required

filetype off   " required



" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()


" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'tmux-plugins/vim-tmux'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'funorpain/vim-cpplint'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/google.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
" ADD ADDITIONAL PLUGINS HERE! "
" ADD ADDITIONAL PLUGINS HERE! "

" ADD ADDITIONAL PLUGINS HERE! "



" All of your Plugins must be added before the following line

call vundle#end()   " required


filetype plugin indent on   " required
:set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
:nmap <C-N><C-N> :set invnumber<CR>
:set gfn=Monospace\ Regular\ 12
:syntax on
:set smartcase
:set nowrap
":set statusline+=%F
:set laststatus=2
:nmap <C-S> :set scb!
:colorscheme slate
:set wildmenu
:autocmd BufRead,BufNewFile *.simics set filetype=python
autocmd BufEnter *.vh :setlocal filetype=verilog
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
:set pastetoggle=<F3>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ycmCompleter Goto
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>go  : YcmCompleter GoTo<CR>
nnoremap <leader>def : YcmCompleter GoToDefinition<CR>
nnoremap <leader>dec : YcmCompleter GoToDeclaration<CR>
nnoremap <leader>inc : YcmCompleter GoToInclude<CR>
nnoremap <leader>fix : YcmCompleter FixIt<CR>
nnoremap <leader>p   : YcmCompleter GetParent<CR>
nnoremap <leader>t   : YcmCompleter GetType<CR>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpplint
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType cpp map <buffer> <F6> :call Cpplint()<CR>
" autocmd BufWritePost *.h,*.cpp call Cpplint()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clang
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-K> :! /usr/intel/pkgs/clang/9.0.0/bin/clang-format<cr>
imap <C-K> <c-o>:! /usr/intel/pkgs/clang/9.0.0/bin/clang-format<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi CursorLine term=bold cterm=bold guibg=Grey40
set backspace=2
"set statusline+=___col:\ %c,___line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:airline_powerline_fonts = 1  " Use the special font characters
"let g:airline#extensions#tabline#enabled = 1 "Display buffers as tab titles
let g:airline_theme='minimalist'
command CmdLinePretty  :%s/ -/\\\r -/g
command RemoveWhiteSpace :%s/\s\+$//
map <F2> :retab <cr>
:set nowrap
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
:set mouse=a
:highlight OverLength ctermbg=red ctermfg=white guibg=#592929
:match OverLength /\%81v.\+/
