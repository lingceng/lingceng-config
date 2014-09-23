"
" create a symbol link to use
"
" cd ~
" ln -s path_to_rep/vimrc .vimrc
"
set nocompatible              " be iMproved, required
filetype off                  " required

" vundle plugins ----------- {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
" user CTRL-P to search
" F5 to refresh in search window
Plugin 'kien/ctrlp.vim'

"
" :find user
" :Rcontroller
" gs to go to definition
"
Plugin 'tpope/vim-rails.git'

" snipMate Version
" code snipe
"
" Plugin 'snipMate'

" ultisnips Version {{{
" https://github.com/sirver/ultisnips
" help UltiSnip
" :UltiSnipsEdit
"
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

nnoremap <leader>sn :tabe ~/.vim/bundle/vim-snippets/UltiSnips/<cr>


" }}}

" vim-snipmate version {{{
" https://github.com/garbas/vim-snipmate
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
" }}}

" status line
"let g:airline#extensions#branch#enabled = 1
"lugin 'bling/vim-airline'

"
" tree navigate
"
Plugin 'The-NERD-tree'

"
" coffeescript
"
Plugin 'vim-coffee-script'

"
" show git diff
"
Plugin 'airblade/vim-gitgutter'

"  <leader>P          to preview markdown
"  :echo has('ruby')  1 means ruby interpreter is builtin
"  redcarpet          for markdown preview
Plugin 'greyblake/vim-preview'


"
" replace similar words in once
"  /\cgoodday
"  :%SmartCase "HelloWorld"
"
Plugin 'SmartCase'


" git handle
" Gedit edit file in index
" Gdiff compare with index
Plugin 'fugitive.vim'

"
" Want to turn fooBar into foo_bar? Press crs (coerce to snake_case).
"
" MixedCase " (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
" support by repeat.vim
Plugin 'abolish.vim'

" repeat support for abolish.vim
Plugin 'repeat.vim'


" https://github.com/tpope/vim-surround
" ds to delete surround
" cs to change surround
" ys to add surround
" support by repeat.vim
Plugin 'surround.vim'

" for markdown
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleInstall       - install configured plugins
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

" required for vundle plugins
filetype plugin indent on

" syntax on
syntax on

" incsearch highlight the next match while you're stil typing
set hlsearch incsearch

" tabspace settings ------- {{{
" if you use <tab> to indent the code
" vim use tabs other than spaces for the indentaion
" expandtab will turn a tab into 'tabstop' spaces
set expandtab
set tabstop=2

" if you use '>' or <c-t> to indent the code, this matters this default to 8
set shiftwidth=2

" make backspace work like most other apps
set backspace=2

" you can also set different indent level for other languages
" autocmd FileType c setlocal shiftwidth=4 tabstop=4
" }}}

" set tempfile swpfile path
" set dir=/tmp

" open back up
set backup
" set backupdir=/tmp

" for ruby syntax of minitest
" i_CTRL-X_CTRL-U to trigger in ruby file
set completefunc=syntaxcomplete#Complete

" enable mouse and shirt select option
" behave mswin

" set autoindent
" set autoindent

" case sensitive when capital character exists
set smartcase

" custom preview command
let mapleader = ","

" http://wordlist.aspell.net/dicts/
set dictionary+=~/.vim/dict/*.10

" map settings ---- {{{
" run current to end in shell
nnoremap <leader>e y$:!<c-r>"
vnoremap <leader>e y:!<c-r>"

" run current to end in shell
nnoremap <leader>x y$:@"<cr>
vnoremap <leader>x y:@"<cr>


" copy to clipboard
" ^ first non-blank character
nnoremap <leader>y "+y$
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" map ESC
" defautl is normal map
inoremap jk <esc>
inoremap <leader>w <esc>:w<cr>
" disable old esc
" other is <c-c>
inoremap <esc> <nop>

" run current line in ruby
" | is chain to run command
nnoremap <leader>r 0v$:w! /tmp/vim.rb \| !irb /tmp/vim.rb<cr>

" in vim version
" nnoremap <leader>r 0v$:w! /tmp/vim.rb \| :botright new /tmp/vim_ruby_result \
"      \| :r !irb /tmp/vim.rb<cr>

" run selected content in ruby
"vmap ,r y:!ruby -we '<c-r>"'
vnoremap <leader>r :w! /tmp/vim.rb \| !irb /tmp/vim.rb<cr>

" Ctrl+u make work upcase in insert mode
inoremap <c-u> <esc>viwUea
" make Ctrl+k to complete with dictionary
inoremap <c-k> <c-x><c-k>

" vimrc edit and source
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" make quates arrounded
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
inoremap <leader>" "<esc>bi"<esc>Ea

" mark code in markdown
nnoremap  <leader>` viw<esc>a`<esc>hbi`<esc>lel

" abbreviations
" enc and hit the space
inoreabbrev enc  encoding: utf-8

" merge window
nnoremap <leader>mk <c-w>k:q<cr>
nnoremap <leader>mh <c-w>h:q<cr>
nnoremap <leader>mj <c-w>j:q<cr>
nnoremap <leader>ml <c-w>l:q<cr>
" Move window
nnoremap <leader>k <c-w>k<cr>
nnoremap <leader>h <c-w>h<cr>
nnoremap <leader>j <c-w>j<cr>
nnoremap <leader>l <c-w>l<cr>

" map tails whitspace and tabs as error
nnoremap <leader>w :match Error /\s\+$/<cr>
nnoremap <leader>W :match none<cr>
" clear ending white space
nnoremap <leader>cw :%s/\v\s+$//e<cr>
" warn tailing whitespace and tabs
autocmd BufRead * match Error /\v\s+$/
match Error /\v\s+$/
" use :retab to repace tabs to space

" clear tailing whitespace before save
autocmd BufWritePre * :silent %s/\v\s+$//e

" use plugin instead
" grep
" :silent hiding any messages
" vnoremap <leader>g y<esc>:grep! -R <c-r>" . <cr>:copen<cr>

" open NERDTree
nnoremap <leader>n :NERDTree<cr>
" find current file in NERDTree
nnoremap <leader>f :NERDTreeFind<cr>


" user alt-left to move tab left
" user alt-right to move tab right
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <leader>1 :tabnext 1<cr>
nnoremap <leader>2 :tabnext 2<cr>
nnoremap <leader>3 :tabnext 3<cr>
nnoremap <leader>4 :tabnext 4<cr>

" custom statusline
" use *airline* instead
" help statusline
" hi User1 ctermbg=darkblue guibg=dardblue
set laststatus=2
" set statusline=%<%f\ %h%m%r%=%1*%y%*\ ts:%{&tabstop}\ %-14.(%l/%L,%c%)\ %P

" set theme for airline
nnoremap <leader>th :AirlineTheme hybrid<cr>

" show line number
set number

" highlight overflow 80
" http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" local cd to current folder
nnoremap <leader>cd :lcd %:p:h<cr>

vnoremap <leader>hu y:!firefox https://github.com/<c-r>"<cr>

" ri current word
nnoremap <leader>ri :!ri <cword><cr>

" }}}

" eruby file setting ---------------- {{{
augroup filetype_ruby
  autocmd!

  " run current file
  autocmd Filetype ruby nnoremap <buffer> <leader>mr :w<cr>:!irb %\<cr>

  " see ri doc
  autocmd Filetype ruby nnoremap <buffer> <leader>h :!ri <cword>\<cr>

augroup END
" }}}

" eruby file setting ---------------- {{{
augroup filetype_eruby
  autocmd!
  " nowrap for html and erb
  autocmd FileType xhtml,html,eruby setlocal nowrap

  " <% %> for erb

  " auto complete tag
  " inoremap to avoid recursively map
  " <buffer> to avoid mismap between buffer
  " ctrl_t to complete tag for html and erb
  autocmd Filetype xhtm,html,eruby inoremap <buffer> <c-t> <esc>bywf>a</<ESC>pa><ESC>F>a

  " fold option--------------------------- {{{

  " 'foldmethod' 'fdm'  string (default: "manual")
  autocmd FileType xhtml,html,eruby setlocal foldmethod=indent

  " 'foldlevel' 'fdl' number (default: 0)
  " Sets the fold level: Folds with a higher level will be closed.
  autocmd FileType xhtml,html,eruby setlocal foldlevel=3

  " 'foldminlines' 'fml'  number (default: 1)
  autocmd FileType xhtml,html,eruby setlocal foldminlines=100

  " 'foldnestmax' 'fdn' number (default: 20)
  autocmd FileType xhtml,html,eruby setlocal foldnestmax=10
  " }}}

augroup END
" }}}

" vimscript file setting ---------------- {{{
augroup filetype_vim
  autocmd!
  " user braces to mark fold in vimrc
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" markdown file setting ---------------- {{{
augroup filetype_markdown
  autocmd!

  let maplocalleader = ","

  " add heading
  autocmd Filetype markdown inoremap <buffer> <LocalLeader>1 <esc>o===<esc>o
  autocmd Filetype markdown inoremap <buffer> <LocalLeader>2 <esc>o---<esc>o
  autocmd Filetype markdown inoremap <buffer> <LocalLeader>3 <esc>I### <esc>o
  autocmd Filetype markdown inoremap <buffer> <LocalLeader>4 <esc>I#### <esc>o
  autocmd Filetype markdown inoremap <buffer> <LocalLeader>5 <esc>I##### <<esc>o

  " to insert image
  autocmd Filetype markdown inoremap <buffer> <LocalLeader>i  []()<esc>F[a

augroup END
" }}}



