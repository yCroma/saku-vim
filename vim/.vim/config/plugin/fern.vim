let g:fern#default_hidden = 1

let g:fern#renderer#default#leaf_symbol = "   "
let g:fern#renderer#default#collapsed_symbol = " + "
let g:fern#renderer#default#expanded_symbol = " - "

" 切り替え
nnoremap <Space>fi :Fern . -drawer -reveal=% -toggle<CR>

function! s:init_fern() abort
  "Use 'select' instead of 'edit' for default 'open' action
  nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
  " remap for fern
  nmap <buffer> <C-h> <C-w><C-h>
  nmap <buffer> <C-l> <C-w><C-l>
  nmap <buffer> q :q<CR>
  nmap <buffer> b <Plug>(fern-action-open:split)
  nmap <buffer> r <Plug>(fern-action-open:vsplit)
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  " action mappingが潰れているので要注意
  nmap <buffer> a <Plug>(fern-action-new-file)
  nmap <buffer> A <Plug>(fern-action-new-dir)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> df <Plug>(fern-action-trash)
  nmap <buffer> dF <Plug>(fern-action-remove)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
