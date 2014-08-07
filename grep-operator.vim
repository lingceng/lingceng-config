"
" Grep Operator Vim Plugin
"
" Description:
" Grep text recursively in current file and open the quickfix window.
"
" Install:
" Put this plugin here ~/.vim/plugin/grep-operator.vim
"
" Usage:
" <leader>g
" "leader usually be \
"
" Example:
" "grep current word
" \giw
"

nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
" ctrl-u in command mean delete from the cursor to the beginning of the line
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

" s means put function in current script namespace
" ! means silent replace exist function
function! s:GrepOperator(type)
  " cache the register
  let saved_unnamed_register = @@

  if a:type ==# 'v'
    " copy selected in visual mode
    execute "normal! `<v`>y"
  elseif a:type ==# 'char' " ==# case-sensitive compare
    " copy in <leader>gw format
    execute "normal! `[v`]y"
  else
    return
  endif

  " @ is the unnameed default register
  silent execute "grep! -R " . shellescape(@@) . " . "
  copen

  let @@ = saved_unnamed_register
endfunction
