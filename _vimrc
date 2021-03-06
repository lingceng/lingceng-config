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
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif



" :find user
" :Rcontroller
" gs to go to definition
"
Plugin 'tpope/vim-rails.git'

" mark code in markdown
nnoremap  <leader>` viw<esc>a`<esc>hbi`<esc>lel

Plugin 'godlygeek/tabular'
nnoremap <Leader>a\| :Tabularize /\|<CR>
vnoremap <Leader>a\| :Tabularize /\|<CR>
nnoremap <Leader>a- :Tabularize /-<CR>
vnoremap <Leader>a- :Tabularize /-<CR>
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a: :Tabularize /:\zs/l0l1<CR>
vnoremap <Leader>a: :Tabularize /:\zs/l0l1<CR>

" Keep after tabular
" Enable GitHub Flavored Markdown
" https://help.github.com/articles/github-flavored-markdown/
"let g:vim_markdown_folding_disabled=1
"Plugin 'plasticboy/vim-markdown'

" disable it because little change happened
"Plugin 'tpope/vim-markdown'

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
nnoremap <leader>ls <ESC>:call UltiSnips#ListSnippets()<CR>

" tree navigate
Plugin 'scrooloose/nerdtree'
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
let g:airline_powerline_fonts = 1
Plugin 'bling/vim-airline'

" npm install -g livedown
" sudo ln -s /usr/bin/nodejs /usr/bin/node
"
" livedown start account.mkd --open
"
Plugin 'shime/vim-livedown'
" show markdown in browser
nnoremap gm :call LivedownPreview()<CR>

" replace similar words in once
"  /\cgoodday
"  :%SmartCase "HelloWorld"
Plugin 'SmartCase'


" git handle
" Gedit edit file in index
" Gdiff compare with index
Plugin 'tpope/vim-fugitive'
nnoremap <leader>gs  :Gstatus<CR>

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
let g:ackprg = 'ag --nogroup --nocolor --column'

" syntax check
let g:syntastic_ignore_files = ['\m.*application.css.scss']
Plugin 'Syntastic'

"Plugin 'AutoComplPop'

" autocomplete pop
"Plugin 'AutoComplPop'

" Usage
" ]m next method
" ]M next method end
Plugin 'vim-ruby/vim-ruby'

" make YCM compatible with UltiSnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" list command
let g:ycm_key_invoke_completion = ''
" Super complete plugin
"Plugin 'Valloric/YouCompleteMe'

" gc to make comment
Plugin 'tomtom/tcomment_vim'



let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1

" <leader><leader> to trigger
Plugin 'Lokaltog/vim-easymotion'

map <Leader>ll <Plug>(easymotion-lineforward)
map <Leader>jj <Plug>(easymotion-j)
map <Leader>kk <Plug>(easymotion-k)
map <Leader>hh <Plug>(easymotion-linebackward)


Plugin 'tristen/vim-sparkup'
let g:sparkupNextMapping = '<c-y>'

" use :EnMasse to edit files in quickfix and save at once
Plugin 'Wolfy87/vim-enmasse'

" use <leader>gb to match and edit files
"Plugin 'pelodelfuego/vim-swoop'


let g:tagbar_sort = 0
Plugin 'majutsushi/tagbar'
nnoremap <F8> :TagbarToggle<CR>

"Plugin 'nanotech/jellybeans.vim'

" :vnoremap <leader>rem  :RExtractMethod<cr>
Plugin 'ecomba/vim-ruby-refactoring'

" :AsyncShell run any program and load results in a split
" need +clientserver
" Plugin 'idbrii/AsyncCommand'

" function MyTagContext()
"   return "\<c-x>\<c-]>"
" endfunction
"
" let g:SuperTabCompletionContexts =
"       \ ['MyTagContext', 's:ContextText', 's:ContextDiscover']
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabContextDiscoverDiscovery =
"      \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>", "&omnifunc:<c-x><c-k>"]
"
" Plugin 'ervandew/supertab'
"

" aj around json
" ij in json
" gqaj format
Plugin 'tpope/vim-jdaddy'


" ,w ,e  ,b
"Plugin 'bkad/CamelCaseMotion'


Plugin 'AndrewRadev/splitjoin.vim'

let g:splitjoin_ruby_hanging_args = 0
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'

" :PP: Pretty print. With no argument, acts as a REPL.
" :Runtime: Reload runtime files. Like :runtime!, but it unlets any include guards first.
Plugin 'tpope/vim-scriptease'

" Plugin of potion lauguage
Plugin 'lingceng/potion.vim'

" Zeal docs
" <leader>z search in current file type docset
" <leader>Z manual set docset
Plugin 'KabbAmine/zeavim.vim'

" :Quickrun ruby
Plugin 'thinca/vim-quickrun'

Plugin 'elixir-lang/vim-elixir'

" Highlight color
Plugin 'ap/vim-css-color'

" Color picker
" Need sudo apt-get install zenity
" :VCoolor
let g:vcoolor_map = '<leader>ce'
Plugin 'KabbAmine/vCoolor.vim'
"Plugin 'Rykka/colorv.vim'

" Mappings work only in vim command line.
Plugin 'bruno-/vim-husk'

Plugin 'szw/vim-maximizer'
"nnoremap <silent><C-w>o :MaximizerToggle<CR>

Plugin 'ryanoasis/vim-webdevicons'

" Automatically change pwd to current root
" <Leader>cd to manually invoke vim-rooter
Plugin 'airblade/vim-rooter'
let g:rooter_silent_chdir = 1

" react jsx syntax highlight
Plugin 'mxw/vim-jsx'

" ENDOFVUNDLE
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
set grepprg=ag

" grep current word
nnoremap <leader>g :grep <cword><CR>
" use // to search selected content
vnoremap // y/<c-r>"<cr>

if has('nvim')
  nnoremap <leader>d :botright 14split \| term dict <cword><CR>
  vnoremap <leader>d y:botright 14split \| term dict <c-r>"<CR>
else
  nnoremap <leader>d :!dict <cword><CR>
  vnoremap <leader>d y:!dict <c-r>"<CR>
end


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

nnoremap <leader>y "+y$
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" map ESC
" defautl is normal map
inoremap jk <esc>
" disable old esc
" other is <c-c>
" inoremap <esc> <nop>

function! EnableRunRuby()
  " run current line in ruby
  " | is chain to run command
  nnoremap <leader>r 0v$:w! /tmp/vim.rb \| !irb /tmp/vim.rb<cr>
  " in vim version
  vnoremap <leader>r :w! /tmp/vim.rb \| !irb /tmp/vim.rb<cr>
endfunction
call EnableRunRuby()

function! EnableRunVim()
  nnoremap <leader>r 0v$:w! /tmp/vim.vim \| source /tmp/vim.vim<cr>
  " in vim version
  vnoremap <leader>r :w! /tmp/vim.vim \| source /tmp/vim.vim<cr>
endfunction

" Ctrl+u make work upcase in insert mode
inoremap <c-u> <esc>b~ea

" make Ctrl+k to complete with dictionary
" comment out to avoid :diagraphs conflict
"inoremap <c-k> <c-x><c-k>

" vimrc edit and source
nnoremap <leader>ev :tab drop $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

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
nnoremap <leader>nc :NERDTreeClose<cr>

" user alt-left to move tab left
" user alt-right to move tab right
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left>  :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <leader>1 :tabnext 1<cr>
nnoremap <leader>2 :tabnext 2<cr>
nnoremap <leader>3 :tabnext 3<cr>
nnoremap <leader>4 :tabnext 4<cr>
nnoremap <leader>5 :tabnext 5<cr>
nnoremap <leader>6 :tabnext 6<cr>
nnoremap <leader>7 :tabnext 7<cr>
nnoremap <leader>8 :tabnext 8<cr>
nnoremap <leader>9 :tabnext 9<cr>

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



" }}}

" New setting

" use % to jump between HTML pair tga
" or class/end def/end if/end pair
runtime macros/matchit.vim

" Set Ex command history
set history=200

set showcmd

" List autocomplete menu
" Use <C-d> to list all available
set wildmenu
set wildmode=full

" Use <C-p> to act as <Up>, complete with heading match history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Generate tags
" Find tag example
" :tags compute_lease
noremap <C-F5> :!ctags -R --exclude=*.js<CR>
noremap <leader>rt :!ctags -R --exclude='*.js'<CR>

noremap <F5> :e %<CR>

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


" copy current file path to system clipboard
nnoremap <leader>cp :let @+ = expand("%")<CR>

nnoremap j gj
nnoremap k gk
nnoremap <leader>w mp:w<CR>`p
inoremap <leader>w <ESC>mp:w<CR>`p

" whole page text-object
vnoremap o :<C-U>normal ggVG<CR>
onoremap o :normal ggVG<CR>

"nnoremap <space> ciw

" Edit work note
nnoremap <leader>ew :tab drop ~/workspace/document/work_2014_7_7.mkd<CR>

" Edit todo
nnoremap <leader>et :tab drop ~/workspace/document/TODOS.mkd<CR>
" sudo write
nnoremap <leader>sw :w !sudo tee %<CR>

" Run test on current method
nnoremap <leader>ra :execute "Rake ".line(".")<CR>

augroup markdown
  autocmd! FileType markdown setlocal autoindent
  autocmd! BufRead,BufNewFile *.md set filetype=markdown
  autocmd! BufRead,BufNewFile *.mkd set filetype=markdown
  autocmd! FileType markdown setlocal autoindent
augroup END

nnoremap <leader>de :!sensible-browser http://devdocs.io/\#q=<cword><CR>
vnoremap <leader>de y:!sensible-browser http://devdocs.io/\#q=<c-r>"<CR>

nnoremap <leader>dg :!sensible-browser http://www.google.com/\#q=<cword><CR>
vnoremap <leader>dg y:!sensible-browser http://www.google.com/\#q=<c-r>"<CR>

if has('nvim')
  " neovim termminal mapping
  tnoremap <c-j> <C-\><C-n>

  " copy or paste with system clipboard
  " will cause some problem.
  set clipboard=unnamedplus
end

