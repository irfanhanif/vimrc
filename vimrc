set expandtab

set tabstop=2
set shiftwidth=2
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
noremap <Up> <C-y>
noremap <Down> <C-e>
noremap <Left> <Nop>
noremap <Right> <Nop>

" press j 2 times to exit insert and visual mode
inoremap <C-j> <C-[>
vnoremap <C-j> <C-[>

set number
syntax on
colo peachpuff
nmap <CR> o<Esc>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=8 shiftwidth=8 
let g:go_version_warning = 0
let g:go_fmt_autosave = 0
let g:go_asmfmt_autosave = 0

:set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
call plug#end()
