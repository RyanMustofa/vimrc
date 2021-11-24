set nocompatible              " required
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Plugin that haven't been added:
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'morhetz/gruvbox'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jwalton512/vim-blade'
Plugin 'lifepillar/vim-solarized8'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'leafOfTree/vim-vue-plugin'
" Plugin 'sickill/vim-monokai'
" Plugin 'arcticicestudio/nord-vim'
Plugin 'dense-analysis/ale'
Plugin 'frazrepo/vim-rainbow'
Plugin 'leafgarland/typescript-vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'othree/yajs.vim'
Plugin 'tomasr/molokai'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'shougo/neocomplcache.vim'
Plugin 'preservim/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'Yggdroot/indentLine'
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/syntastic'
Plugin 'turbio/bracey.vim'
Plugin 'itchyny/lightline.vim'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'valloric/youcompleteme'
"Plugin 'jaxbot/browserlink.vim'
Plugin 'jacoborus/tender.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required:q

set expandtab

set tabstop=2
set softtabstop=2

set shiftwidth=2

if (has("termguicolors"))
 set termguicolors
endif

set t_Co=256
set background=dark
colorscheme molokai
" colorscheme solarized8
" colorscheme tender
" colorscheme gruvbox
" autocmd vimcenter * hi Normal guibg=NONE ctermbg=None

"transparent


"for transparent background

" function! AdaptColorscheme()
"    highlight clear CursorLine
"    highlight Normal ctermbg=none
"    highlight LineNr ctermbg=none
"    highlight Folded ctermbg=none
"    highlight NonText ctermbg=none
"    highlight SpecialKey ctermbg=none
"    highlight VertSplit ctermbg=none
"    highlight SignColumn ctermbg=none
" endfunction
" autocmd ColorScheme * call AdaptColorscheme()
"
" highlight Normal guibg=NONE ctermbg=NONE
" highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
" highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
" highlight clear LineNr
" highlight clear SignColumn
" highlight clear StatusLine
"
"
" autocmd InsertEnter * set nocursorline
"
" autocmd InsertLeave * set nocursorline

"" extra settings, uncomment them if necessary :) 
"set cursorline
"set noshowmode
"set nocursorline

" trasparent end


"Nerdtree configuration
map <C-n> :NERDTreeToggle<CR>
map <C-o> :Prettier<CR>


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


set encoding=utf-8
syntax on

set nocompatible
set noswapfile
set nowrap
set number
set incsearch
set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set splitbelow
set splitright

 autocmd FileType vue syntax sync fromstart
 autocmd FileType html setlocal sw=2 sts=2
 autocmd BufRead,BufNewFile *.svelte setlocal ft=html
 autocmd BufNewFile,BufRead *.vue set ft=vue
 autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
 autocmd QuickFixCmdPost *grep* cwindow
 autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
 autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

 set runtimepath^=~/.vim/bundle/ctrlp.vim
 let g:prettier#autoformat = 0

let g:polyglot_disabled = ['css']

"let g:neocomplcache_enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:prettier#exec_cmd_path = "~/.vim/bundle/vim-prettier"
let g:prettier#exec_cmd_async = 1
" In ~/.vim/ftplugin/javascript.vim, or somewhere similar.
"
" " Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
"
"" Equivalent to the above.
let b:ale_linters = {'javascript': ['eslint']}"

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

Plugin 'wakatime/vim-wakatime'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
"" Align line-wise comment delimiters flush left instead of following code
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
"" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"
"" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1"
" "
" "
" "
let g:user_emmet_leader_key=','

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

"floatern
let g:floaterm_keymap_toggle = '<F12>'

let g:multi_cursor_use_default_mapping=0
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Default mapping
let g:multi_cursor_start_word_key      = '<C-j>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-j>'
let g:multi_cursor_prev_key            = '<C-k>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" rainbow
" let g:rainbow_active = 1

" let g:rainbow_load_separately = [
"     \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"     \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
"     \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"     \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
"     \ ]
"
" let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
" let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']



let g:prettier#config#tab_width = 2

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
