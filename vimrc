set nocompatible
filetype off

" set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle the Vundle vundlers
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

syntax on
set guioptions+=LlRrbm
set guioptions-=LlRrbm

" base16 color theme
let base16colorspace=256
colorscheme base16-materia

set wrap
set number
set softtabstop=2 shiftwidth=4
set expandtab

" FIXME cargo-cult
set showcmd
set wildmenu
set lazyredraw
set showmatch

" open nerdtree if there was no file specified
autocmd vimenter * if !argc() | NERDTree | endif

" Strip trailing whitespace in the current buffer
nnoremap <leader>w :call StripTrailingWhiteSpace()<CR>

"autocmd BufWritePre *.* call StripTrailingWhiteSpace()

function! StripTrailingWhiteSpace()
  let l:winview = winsaveview()
  silent! %s/\s\+$//
  call winrestview(l:winview)
endfunction

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so

noremap <leader>n :NERDTreeToggle<CR>

set incsearch
set hlsearch

" searches only case-sensitive if upper-case present
set ignorecase smartcase

set guifont=Inconsolata:h12

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set shell=/bin/zsh

" CtrlP
let g:ctrlp_max_files=50000
" Syntastic
let g:syntastic_ignore_files=['c']
" Airline
set laststatus=2 " make sure airline renders on non-split panes
let g:airline_powerline_fonts = 1

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$[[dir]]']

