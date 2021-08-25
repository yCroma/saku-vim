" install plugin with vim-plug

call plug#begin('~/.vim/ftplugin')

" colorsheme {{{
Plug 'sickill/vim-monokai'
" }}}

" tabline {{{
Plug 'itchyny/lightline.vim'

" buftabline for lightline
Plug 'mengelbrecht/lightline-bufferline'
" }}}

" filer
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" nardfont
Plug 'lambdalisue/nerdfont.vim'

" auto-pair
Plug 'mattn/vim-lexiv'
" bracket pair colorizer
Plug 'luochen1990/rainbow'

" comment line
Plug 'tpope/vim-commentary'

" emmet
" ,<c-y>
Plug 'mattn/emmet-vim'

" make table for markdown
Plug 'mattn/vim-maketable'

" markdown
Plug 'violetyk/iikanji-markdown.vim'

" lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" window resizing
" <c-e>
Plug 'simeji/winresizer'

" repeat complex commands
Plug 'tpope/vim-repeat'

" change quotation
" cs '"
" ds '
Plug 'tpope/vim-surround'

" replace
" 変数一度に全部カエラエル
"Plug 'kqito/vim-easy-replace'

" sign git diff
Plug 'airblade/vim-gitgutter'
" use for lightline to display FugitiveHead
Plug 'tpope/vim-fugitive'

" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'

" Popup your buffer
"Plug 'yCroma/pobls.vim'

" task runner
Plug 'thinca/vim-quickrun'

call plug#end()
