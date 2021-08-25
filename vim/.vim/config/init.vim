" syntax highlight
syntax enable
colorscheme monokai

"set scrolloff=3

set showtabline=2
set noswapfile

set number
set nocompatible
set complete-=i
set wildmenu
set laststatus=2

set hidden
set updatetime=300
set splitright
set splitbelow

set backspace=2
set hlsearch

set cursorline
set cursorcolumn

" short commands
command! -nargs=0 CursorCerntering normal! zz

" filetype
if has("autocmd")
  autocmd BufRead,WinEnter * CursorCerntering
  autocmd BufNewFile, BufRead *.cson set filetype=json
endif

" indent
if has("autocmd")
    "ファイルタイプの検索を有効にする
    filetype plugin on
    "ファイルタイプに合わせたインデントを利用
    filetype indent on
    "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtabの略
    autocmd FileType json        setlocal sw=2 sts=2 ts=2 et
    autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
    autocmd FileType typescript  setlocal sw=2 sts=2 ts=2 et
    autocmd FileType markdown    setlocal sw=2 sts=2 ts=2 et
    autocmd FileType sh          setlocal sw=4 sts=4 ts=4 et
    autocmd FileType tmux        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType make        setlocal ts=4 " makefileはtabstopのみ
    autocmd FileType dockerfile  setlocal sw=4 sts=4 ts=4 et
    autocmd FileType vim	       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType zsh	       setlocal sw=4 sts=4 ts=4 et
endif

" folding
if has("autocmd")
    "ファイルタイプの検索を有効にする
    filetype plugin on
    autocmd FileType javascript  setlocal foldmethod=indent
    autocmd FileType typescript  setlocal foldmethod=indent
    autocmd FileType tmux        setlocal foldmethod=marker
    autocmd FileType vim         setlocal foldmethod=marker
    autocmd FileType zsh         setlocal foldmethod=marker
endif

" Save fold settings.
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
" Don't save options.
set viewoptions-=options'

" mouse scroll {{{
set mouse=a

let s:stop_time = 10

function! s:down(timer) abort
  execute "normal! 3\<C-e>3j"
endfunction

function! s:up(timer) abort
  execute "normal! 3\<C-y>3k"
endfunction

function! s:smooth_scroll(fn) abort
  let working_timer = get(s:, 'smooth_scroll_timer', 0)
  if !empty(timer_info(working_timer))
    call timer_stop(working_timer)
  endif
  if (a:fn ==# 'down' && line('$') == line('w$')) ||
        \ (a:fn ==# 'up' && line('w0') == 1)
    return
  endif
  let s:smooth_scroll_timer =
  timer_start(s:stop_time, function('s:' . a:fn),
  {'repeat' : &scroll/3})
endfunction

" }}}
