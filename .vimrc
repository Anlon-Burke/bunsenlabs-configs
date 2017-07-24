colorscheme desert      " colour scheme
syntax enable           " syntax processing
filetype plugin indent on   " syntax plugins (~/.vim/syntax/)

set tabstop=4           " tabs width as 4 spaces when viewing
set softtabstop=4       " tabs width as 4 spaces when editing
set expandtab           " tabs = spaces
set number              " line numbers
set nowrap              " horizontal scroll instead of wrapping
set showcmd             " show last command on bottom
set wildmenu            " visual autocomplete for command
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set smartindent         " language-specific autoindentation
set autoindent          " autoindentation 
set shiftwidth=4        " autoindentation as 4 spaces


" syntastic settings
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" ghc-mod settings
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>


" supertab settings
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
      imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
    if has("unix")
        inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
    endif
endif


" neco-ghc settings
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc


execute pathogen#infect()
