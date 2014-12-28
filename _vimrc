" lingceng vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ","

" Vundle plugins  {{{
" see :h vundle for more details or wiki for FAQ
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
" User CTRL-P to search, then <C-b> to change mode
" F5 to refresh in search window
Plugin 'kien/ctrlp.vim'
"let g:ctrlp_cmd = 'CtrlPMRU'

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

" Wisely add end in ruby
Plugin 'tpope/vim-endwise'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

nnoremap <leader>sn :tabe ~/.vim/bundle/vim-snippets/UltiSnips/<cr>

" tree navigate
Plugin 'The-NERD-tree'
" Use <C-b> to toggle bookmark
" always show bookmarks
"let g:NERDTreeShowBookmarks = 1


" coffeescript
Plugin 'vim-coffee-script'

" show git diff
Plugin 'airblade/vim-gitgutter'

" always show status line
set laststatus=2
" force vim automatic detection of terminal colors
set t_Co=256
Plugin 'bling/vim-airline'

" npm install -g livedown
" sudo ln -s /usr/bin/nodejs /usr/bin/node
"
" livedown start account.mkd --open
"
Plugin 'shime/vim-livedown'
nnoremap gm :call LivedownPreview()<CR>

" replace similar words in once
"  /\cgoodday
"  :%SmartCase HelloWorld
Plugin 'SmartCase'


" git handle
" Gedit edit file in index
" Gdiff compare with index
Plugin 'fugitive.vim'
cnoreabbrev gs  Gstatus

" Want to turn fooBar into foo_bar? Press crs (coerce to snake_case).
"
" MixedCase " (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
" support by repeat.vim
Plugin 'abolish.vim'

" repeat support for abolish.vim
Plugin 'repeat.vim'


" https://github.com/tpope/vim-surround
" `ds` to delete surround
" `cs` to change surround
" `ys` to add surround
" Visule then `S"` to add quotes
" support by repeat.vim
Plugin 'surround.vim'

" TabooRename {name}
" Renames the current tab with the name provided.
cnoreabbrev tr  TabooRename
set sessionoptions+=tabpages,globals
Plugin 'gcmt/taboo.vim'

" highlight match html tag
Plugin 'MatchTag'

" Set path for tags
Plugin 'tpope/vim-bundler'

" Or use :pop
" TO jump to first {keyword}
" :tag {keyword}

" better than grep for code
Plugin 'ack.vim'

" syntax check
Plugin 'Syntastic'

"Plugin 'AutoComplPop'

" autocomplete pop
"Plugin 'AutoComplPop'

" Usage
" ]m next method
" ]M next method end
Plugin 'vim-ruby/vim-ruby'

" Super complete plugin
"Plugin 'Valloric/YouCompleteMe'
" make YCM compatible with UltiSnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" list command
let g:ycm_key_invoke_completion = ''

" gc to make comment
Plugin 'tomtom/tcomment_vim'


let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1

" <leader><leader> to trigger
Plugin 'Lokaltog/vim-easymotion'

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)


Plugin 'tristen/vim-sparkup'
let g:sparkupNextMapping = '<c-y>'

" use :EnMasse to edit files in quickfix and save at once
Plugin 'Wolfy87/vim-enmasse'

" use <leader>gb to match and edit files
Plugin 'pelodelfuego/vim-swoop'

Plugin 'majutsushi/tagbar'
nnoremap <F8> :TagbarToggle<CR>

"Plugin 'nanotech/jellybeans.vim'

" :vnoremap <leader>rem  :RExtractMethod<cr>
Plugin 'ecomba/vim-ruby-refactoring'

" :AsyncShell run any program and load results in a split
" need +clientserver
" Plugin 'idbrii/AsyncCommand'

Plugin 'godlygeek/tabular'
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a: :Tabularize /:\zs/l0l1<CR>
vnoremap <Leader>a: :Tabularize /:\zs/l0l1<CR>

Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Put your non-Plugin stuff after this line
" }}}

" Settings  {{{

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

" close back up
set nobackup


" search tags up to root
set tags+=./tags;/

" Use ack instead of grep
set grepprg=ack

" grep current word
nnoremap <leader>g :grep <cword><CR>
" use // to search selected content
vnoremap // y/<c-r>"<cr>

nnoremap <leader>d :!dict <cword><CR>
vnoremap <leader>d y:!dict <c-r>"<CR>

" for ruby syntax of minitest
" i_CTRL-X_CTRL-U to trigger in ruby file
set completefunc=syntaxcomplete#Complete

" set autoindent
" set autoindent

" case sensitive when capital character exists
set ignorecase
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
" inoremap <esc> <nop>

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
inoreabbrev enc  #encoding: utf-8

" warn tailing whitespace and tabs
" use :retab to repace tabs to space
" autocmd BufRead * match Error /\v\s+$/
nnoremap <leader>c :%s/\v\s+$//e<cr>

autocmd BufWritePre * :%s/\v\s+$//e

" make extra whitespace visible
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" clear tailing whitespace before save
"autocmd BufWritePre * :silent %s/\v\s+$//e

" open NERDTree
nnoremap <leader>n :NERDTree<cr>
" find current file in NERDTree
nnoremap <leader>f :NERDTreeFind<cr>
cnoreabbrev nc :NERDTreeClose<cr>

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
" set laststatus=2
" " file and file status
" set statusline=\ %<%f\ %h%m%r
" " syntax message and flag
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" " git branch status
" set statusline+=%1*%{fugitive#statusline()}%*
" " file type
" set statusline+=%=%1*%y%*
" set statusline+=\ [%{&tabstop}]
" set statusline+=\ %-10.(%l/%L,%c%)\ %-4P

" show line number
set number

" highlight overflow 80
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=darkgray

" local cd to current folder
nnoremap <leader>cd :lcd %:p:h<cr>

" past in nextline
" :pu<cr>

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

au BufRead,BufNewFile *.md set filetype=markdown

" }}}

" New setting

" use % to jump between HTML pair tga
" or class/end def/end if/end pair
runtime macros/matchit.vim

" Set Ex command history
set history=200

" List autocomplete menu
" Use <C-d> to list all available
set wildmenu
set wildmode=full

" Use <C-p> to act as <Up>, complete with heading match history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Generate tags
noremap <C-F5> :!ctags -R<CR>

" complete with tag
inoremap <C-]> <C-x><C-]>

" back track tag jump
nnoremap <leader>t <C-t>

" highlight cursorline
" set cursorline

" always keep the last line
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

augroup filetype_eruby
  autocmd!
  " nowrap for html and erb
  autocmd FileType xhtml,html,eruby setlocal nowrap
augroup END

augroup filetype_vim
  autocmd!
  " user braces to mark fold in vimrc
  autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd BufRead *.py set makeprg=python\ %

" split hash
vnoremap <leader>s :s/,/,\r/g<CR> \| :nohl<CR>
