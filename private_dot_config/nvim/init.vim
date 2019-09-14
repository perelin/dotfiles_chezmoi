" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" https://github.com/Chiel92/vim-autoformat
Plug 'Chiel92/vim-autoformat'

" https://github.com/roxma/python-support.nvim
"Plug 'roxma/python-support.nvim' 

" https://vimawesome.com/plugin/vim-colors-solarized-ours
Plug 'altercation/vim-colors-solarized'

" Initialize plugin system
call plug#end()

" Autoload NERDtree https://github.com/scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Set Line Numbers https://www.cyberciti.biz/faq/vi-show-line-numbers/
set number

" https://vi.stackexchange.com/questions/4141/how-to-indent-as-spaces-instead-of-tab
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" https://stackoverflow.com/questions/458915/searching-word-in-vim
set smartcase

" https://vimawesome.com/plugin/vim-colors-solarized-ours
syntax enable
set background=light
colorscheme solarized
