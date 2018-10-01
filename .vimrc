" ======== VIM-PLUG ========

call plug#begin('~/.vim/plugged')

" asynchronous code linting
Plug 'w0rp/ale'

" fuzzy file, buffer, mru, tag, etc finder
Plug 'kien/ctrlp.vim'

" tree-style file explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }

" makes nerdtree work better with tab-based workflow
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }

" show git diff in the gutter, stage/revert hunks
Plug 'airblade/vim-gitgutter'

" powerful and lightweight status/tabline
Plug 'bling/vim-airline'

" tag file generation and syntax highlighting of tags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

" improved jsx/typescript support
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" show tags of current file in a window
Plug 'majutsushi/tagbar'

" LanguageServer client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" code completion, powered by LanguageClient-neovim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" ======== VISUAL ========

" use 256 colors
:set t_Co=256

" set colorscheme to termschool
colorscheme termschool

" fix background color behaviour
hi Normal ctermbg=NONE

" render a column at 80 characters
set colorcolumn=80
highlight ColorColumn ctermbg=232

" ======== EDITING ========

" use 4 spaces to represent tab
:set tabstop=2
:set softtabstop=2
" number of spaces to use for auto indent
:set shiftwidth=2
" copy indent from current line when starting a new line
:set autoindent
" expand tabs to spaces
:set expandtab

" make backspace work like you'd expect in insert mode
:set backspace=indent,eol,start

" use system clipboard as default clipboard
:set clipboard=unnamed

" number of lines to keep above and below the cursor
:set scrolloff=5

" show line numbers
:set number
" make line numbers relative to the current line
:set relativenumber

" always show the sign column, e.g. where lint errors are marked
set signcolumn=yes

" highlight search result
:set hlsearch
" ignore search case
:set ignorecase
" unless you use capitals
:set smartcase
" make sarches always appear in centre of page
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz
" clear search highlighting with enter
nnoremap <cr> :noh<CR><CR>:<backspace>

" F9 to toggle paste mode
:nnoremap <silent><F9> :set paste!<CR>

" don't automatically comment next line on enter/o if already commenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" automatically strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" ======== MISCELLANEOUS ========

" force unix fileformat
:set fileformat=unix

" enable mouse selection
:set mouse=a

" increase max number of files you can open as tabs with -p command line option
:set tabpagemax=50

" make swapfiles be kept in a central location to avoid polluting file system
set directory^=$HOME/.vim/swapfiles//

" use undodir for persistent undoing across file closure
set undodir=~/.vim/undodir
set undofile

" visual autocomplete for command menu
:set wildmenu
" make tab completion in wildmenu work like bash
set wildmode=longest:full,full
set wildmenu

" switch tabs with Ctrl left and right
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
" and whilst in insert mode
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>
" and whilst inside screen / tmux
map <Esc>[C <C-Right>
map <Esc>[D <C-Left>
map <Esc>[1;5D <C-Left>
map <Esc>[1;5C <C-Right>
" and whilst inside screen / tmux and insert mode
map! <Esc>[C <C-Right>
map! <Esc>[D <C-Left>
map! <Esc>[1;5D <C-Left>
map! <Esc>[1;5C <C-Right>

" always write to existing file - prevents webpack watch flakiness
:set backupcopy=yes

" ======== NERDTREE ========

" set toggle to C-n
map <C-n> :NERDTreeTabsToggle<CR>

" ======== CTRLP ========

" only search for things under the directory that you opened vim from
let g:ctrlp_working_path_mode = ''

" ignore temp files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" don't index inside node_modules or dist directories
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist)$'

" ======== STATUS BAR ========

" always show status bar
set laststatus=2
" enable vim-airline plugins
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
" don't show -- INSERT --, pointless as we have a status bar
set noshowmode

" ======== TAGS ========

:let g:easytags_async = 1
:let g:easytags_auto_highlight = 0

" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" open tag under cursor in new tab with ctrl-\
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" ======== COMPLETION ========

" start deoplete on startup
let g:deoplete#enable_at_startup = 1

" don't automaitcally auto complete
call deoplete#custom#option('auto_complete', 0)

" invoke omnifunc with ctrl-l
:inoremap <C-l> <C-x><C-o>

" required for operations modifying multiple buffers like rename.
set hidden

" F5 to bring up language client context menu
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" K to bring up documentation for thing under cursor
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" gd to go to definition of thing under cursor
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" F2 for language server rename
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" define what binaries to use for each LanguageServer
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ }

" ======== LINTING ========

let g:ale_linters = {'javascript': ['eslint'], 'c': ['clang', 'clangtidy', 'clang-format'], 'typescript': ['eslint']}
let g:ale_python_flake8_args='--exclude=migrations --ignore=E261 --max-line-length=80'

" Javascript / React improved highlighting/indentation
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

" map error jumping to [e and ]e
nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> [e  <Plug>LocationPrevious
nmap <silent> ]e  <Plug>LocationNext
" make error jumping wrap
function! <SID>LocationPrevious()
    try
        lprev
    catch /^Vim\%((\a\+)\)\=:E553/
        llast
    endtry
endfunction
function! <SID>LocationNext()
    try
        lnext
    catch /^Vim\%((\a\+)\)\=:E553/
        lfirst
    endtry
endfunction
