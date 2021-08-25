" coc 全般のコンフィグ
" coc.nvim {{{
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
inoremap <C-S> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
" can not use noremap for <Plug>
" https://github.com/neoclide/coc.nvim/issues/1207
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-prettier',
      \ 'coc-eslint',
      \ 'coc-pyright',
      \ 'coc-yaml',
      \ 'coc-vimlsp']
" }}}

" coc-prettier {{{
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" }}}
