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
set hidden

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set guifont=JetBrainsMono\ Nerd\ Font:h10

"=================================================================

" Remaps
" Normal mode
nnoremap <SPACE> <Nop>
let mapleader = ' '

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>
nnoremap <leader>d :bd!<CR>
nnoremap <A-t> :call TermToggle(8)<CR>

" Terminal
tnoremap <ESC> <C-\><C-n>

" Insert mode
inoremap <C-l> <C-x><C-l>
inoremap <C-d> <C-x><C-k>
inoremap <C-f> <C-x><C-f>

"=================================================================

" Plugins
call plug#begin()

" Defaults
Plug 'tpope/vim-sensible' 

" Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'haystackandroid/strawberry'
Plug 'ghifarit53/tokyonight-vim'

Plug 'itchyny/lightline.vim'
Plug 'rkulla/pydiction'
Plug 'Raimondi/delimitMate'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ap/vim-buftabline'
Plug 'neovim/nvim-lspconfig'
call plug#end()

"=================================================================

" Tokynight and gruvbox themes setup
let g:tokyonight_enable_italic=1
let g:gruvbox_italic=1

" Lightline setup
let g:lightline = {'colorscheme' : 'rosepine'}

" Pydiction setup
let g:pydiction_location = '/home/scysta/.local/share/nvim/plugged/pydiction/complete-dict'

" buftabline config
let g:buftabline_show = 1
let g:buftabline_numbers = 2

nmap <leader>1 <Plug>BufTabline.Go(1)
nmap <leader>2 <Plug>BufTabline.Go(2)
nmap <leader>3 <Plug>BufTabline.Go(3)
nmap <leader>4 <Plug>BufTabline.Go(4)
nmap <leader>5 <Plug>BufTabline.Go(5)
nmap <leader>6 <Plug>BufTabline.Go(6)
nmap <leader>7 <Plug>BufTabline.Go(7)
nmap <leader>8 <Plug>BufTabline.Go(8)
nmap <leader>9 <Plug>BufTabline.Go(9)

"=================================================================

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

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

"=================================================================
" Lua

lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = {"python"},

	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
}
EOF
