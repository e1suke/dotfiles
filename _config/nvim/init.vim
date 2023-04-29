" vim-plug
" - https://github.com/junegunn/vim-plug
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
"
" Make sure you use single quotes
"
" ================================
" Add plugins here
"
" Using GitHub Copilot
" - https://copilot.github.com/
" - https://github.com/github/copilot.vim
" Plug 'github/copilot.vim'
"
" Using vim-airline
" - https://github.com/vim-airline/vim-airline
" - https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"
" ================================
"
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

"-----airline-----
" https://github.com/vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
  \ '0': '0 ',
  \ '1': '1 ',
  \ '2': '2 ',
  \ '3': '3 ',
  \ '4': '4 ',
  \ '5': '5 ',
  \ '6': '6 ',
  \ '7': '7 ',
  \ '8': '8 ',
  \ '9': '9 '
\}
let g:airline_theme='papercolor'
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

"-----------------

syntax enable
set nu

