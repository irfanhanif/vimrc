set expandtab

set tabstop=2
set shiftwidth=2
set mouse=a
set hlsearch
set incsearch
set ignorecase

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
noremap <Up> <C-y>
noremap <Down> <C-e>
noremap <Left> <Nop>
noremap <Right> <Nop>

" press j 2 times to exit insert and visual mode
inoremap <C-j> <C-[>
vnoremap <C-j> <C-[>

set relativenumber
syntax on
nmap <CR> o<Esc>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=8 shiftwidth=8
let g:go_version_warning = 0
let g:go_fmt_autosave = 0
let g:go_asmfmt_autosave = 0

let g:go_highlight_extra_types = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_hightlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

set backspace=indent,eol,start

set background=dark
set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'chriskempson/base16-vim'
call plug#end()


colorscheme base16-tomorrow-night
