" General settings
set autoindent                      " auto-indent new lines
set backspace=indent,eol,start      " backspace through everything in insert mode
set cursorline                      " highlight the current line
set expandtab                       " use spaces, not tabs
set list lcs=tab:▸\ ,trail:·,nbsp:_ " Show "invisible" characters
set nocompatible                    " choose no compatibility with legacy vi
set nowrap                          " don't wrap lines
set number                          " Line numbers - always on all the time
set tabstop=2 shiftwidth=2          " a tab is two spaces

" Vim plugins
" Brief help
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugUpdate     - update plugins
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" :PlugUpgrade    - upgrade vim-plug itself
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Utilities
Plug 'jiangmiao/auto-pairs'     " Insert or delete brackets, parens, quotes in pair
Plug 'mileszs/ack.vim'          " :Ack in vim
Plug 'tomtom/tcomment_vim'      " comment lines with <Leader>__ (and other cool tricks)
Plug 'tpope/vim-endwise'        " end structures automatically
Plug 'https://github.com/tpope/vim-dispatch.git'  " run commands in vim asynch

" Git utilities
Plug 'airblade/vim-gitgutter'   " show git status in the gutter
Plug 'tpope/vim-fugitive'       " vim Git wrapper

" Ruby
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
call plug#end()

" Show commits for every source line
nnoremap <Leader>gb :Git blame<CR>
