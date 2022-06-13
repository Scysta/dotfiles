" Option sets
set rnu
set number
set background=dark
set noshowmode
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set splitbelow
set splitright

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Remaps
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <ESC> <C-\><C-n>
inoremap <C-l> <C-x><C-l>
inoremap <C-d> <C-x><C-k>
inoremap <C-f> <C-x><C-f>

" Plugins
call plug#begin()

Plug 'tpope/vim-sensible' 
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'rkulla/pydiction'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'

call plug#end()

" Tokynight and gruvbox themes setup
let g:tokyonight_enable_italic=1
let g:gruvbox_italic=1

" Lightline setup
let g:lightline = {'colorscheme' : 'tokyonight'}

" Pydiction setup
let g:pydiction_location = '/home/scysta/.local/share/nvim/plugged/pydiction/complete-dict'


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme tokyonight
