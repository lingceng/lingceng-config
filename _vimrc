" lingceng vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle plugins
" {{{
" see :h vundle for more details or wiki for FAQ
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
" user CTRL-P to search
" F5 to refresh in search window
Plugin 'kien/ctrlp.vim'

" :find user
" :Rcontroller
" gs to go to definition
"
Plugin 'tpope/vim-rails.git'

" snipMate Version
" code snipe
"
" Plugin 'snipMate'

" ultisnips Version
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

" vim-snipmate version
" https://github.com/garbas/vim-snipmate
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" status line
"let g:airline#extensions#branch#enabled = 1
"lugin 'bling/vim-airline'

" tree navigate
Plugin 'The-NERD-tree'

" coffeescript
Plugin 'vim-coffee-script'

" show git diff
Plugin 'airblade/vim-gitgutter'

"  <leader>P          to preview markdown
"  :echo has('ruby')  1 means ruby interpreter is builtin
"  redcarpet          for markdown preview
Plugin 'greyblake/vim-preview'


" replace similar words in once
"  /\cgoodday
"  :%SmartCase HelloWorld
Plugin 'SmartCase'


" git handle
" Gedit edit file in index
" Gdiff compare with index
Plugin 'fugitive.vim'

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

" TabooRename {name}
" Renames the current tab with the name provided.
nnoremap <leader>tr :TabooRename<space>
set sessionoptions+=tabpages,globals
Plugin 'gcmt/taboo.vim'

" highlight match html tag
Plugin 'MatchTag'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Put your non-Plugin stuff after this line
" }}}

" Settings
" {{{

" required for vundle plugins
filetype plugin indent on

" syntax on
syntax on

" incsearch highlight the next match while you're stil typing
set hlsearch incsearch

" tabspace settings
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

" open back up
set backup
" set backupdir=/tmp

" custom preview command
let mapleader = ","

" for ruby syntax of minitest
" i_CTRL-X_CTRL-U to trigger in ruby file
set completefunc=syntaxcomplete#Complete

" set autoindent
" set autoindent

" case sensitive when capital character exists
set smartcase

" http://wordlist.aspell.net/dicts/
set dictionary+=~/.vim/dict/*.10

" run current to end in shell
nnoremap <leader>e y$:!<c-r>"
vnoremap <leader>e y:!<c-r>"

" copy to clipboard
" ^ first non-blank character
nnoremap <leader>y "+y$
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" map ESC
" defautl is normal map
inoremap jk <esc>
" disable old esc
" other is <c-c>
inoremap <esc> <nop>

" run current line in ruby
" | is chain to run command
nnoremap <leader>r 0v$:w! /tmp/vim.rb \| !irb /tmp/vim.rb<cr>
" in vim version
vnoremap <leader>r :w! /tmp/vim.rb \| !irb /tmp/vim.rb<cr>

" Ctrl+u make work upcase in insert mode
inoremap <c-u> <esc>viwUea

" make Ctrl+k to complete with dictionary
" comment out to avoid :diagraphs conflict
"inoremap <c-k> <c-x><c-k>

" vimrc edit and source
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" mark code in markdown
nnoremap  <leader>` viw<esc>a`<esc>hbi`<esc>lel

" abbreviations
" enc and hit the space
inoreabbrev enc  encoding: utf-8

" merge window
nnoremap mk <c-w>k:q<cr>
nnoremap mh <c-w>h:q<cr>
nnoremap mj <c-w>j:q<cr>
nnoremap ml <c-w>l:q<cr>
" Move window
nnoremap wk <c-w>k<cr>
nnoremap wh <c-w>h<cr>
nnoremap wj <c-w>j<cr>
nnoremap wl <c-w>l<cr>

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

" grep
nnoremap <leader>g :!grep -R

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
nnoremap <leader>5 :tabnext 5<cr>

" custom statusline
" help statusline
" hi User1 ctermbg=darkblue guibg=dardblue
set laststatus=2
" file and file status
set statusline=\ %<%f\ %h%m%r
" git branch status
set statusline+=%1*%{fugitive#statusline()}%*
" file type
set statusline+=%=%1*%y%*
set statusline+=\ [%{&tabstop}]
set statusline+=\ %-10.(%l/%L,%c%)\ %-4P

" show line number
set number

" highlight overflow 80
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" local cd to current folder
nnoremap <leader>cd :lcd %:p:h<cr>

" past in nextline
nnoremap np :pu<cr>

" Enable mouse use in all modes
set mouse=n

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" `Qargs` export quick fix files to args then you can do `argdo`
command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction

" use // to search selected content
vnoremap // y/<c-r>"<cr>



" :Bdi  delete hidden buffer
function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    "Below originally inspired by Hara Krishna Dara and Keith Roberts
    "http://tech.groups.yahoo.com/group/vim/message/56425
    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
        "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bdi :call DeleteInactiveBufs()

" set less to use css syntax
autocmd  BufEnter *.less set syntax=css


" }}}

" File Setting
" {{{
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

  " 'foldmethod' 'fdm'  string (default: "manual")
  autocmd FileType xhtml,html,eruby setlocal foldmethod=indent

  " 'foldlevel' 'fdl' number (default: 0)
  " Sets the fold level: Folds with a higher level will be closed.
  autocmd FileType xhtml,html,eruby setlocal foldlevel=3

  " 'foldminlines' 'fml'  number (default: 1)
  autocmd FileType xhtml,html,eruby setlocal foldminlines=100

  " 'foldnestmax' 'fdn' number (default: 20)
  autocmd FileType xhtml,html,eruby setlocal foldnestmax=10

augroup END

augroup filetype_vim
  autocmd!
  " user braces to mark fold in vimrc
  autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_markdown
  autocmd!

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

