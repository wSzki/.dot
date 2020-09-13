
"check > vimawesome.com
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" "#################################################" "
" "### NATIVE ###" "

" """"""
syntax on
set nu
"set relativenumber
filetype indent on

" Indentation
set autoindent
set cindent
set smartindent

" Lines, rulers, anti word wrap
set linebreak
set ruler
set cursorline

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Tabs & Spaces
set tabstop=4
set shiftwidth=4

" Performance
set complete-=5
set lazyredraw

" Activate Mouse
set mouse=a
set splitright

" Whitespacces
set list
set listchars=space:.,tab:•-,trail:~,extends:>,precedes:<
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" "#################################################" "
" "  ### PLUG ###"
" PlugInstall, PlugClean
call plug#begin('~/.vim/plugged')
"###############################"
Plug 'VundleVim/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline-themes'
Plug 'pandark/42header.vim'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi'
Plug 'dense-analysis/ale'
"Plug 'jiangmiao/auto-pairs'
"Plug 'majutsushi/tagbar'
"###############################"
call plug#end()

" "#################################################" "
" "### GRUVBOX ### " "
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
let g:airline_theme='gruvbox'
set background=dark

" "### RAINBOW BRACKETS ### " "
"let g:rainbow_active = 1
map <C-b> :RainbowToggle<CR>

" "### NERDTREE ### " "
"autoquit if only left is nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-i> :NERDTreeToggle<CR>

" "### YCM ### " "
" YcmRestartServer to reload
let g:ycm_max_num_candidates = 5
let g:ycm_max_num_identifier_candidates = 5

" "### 42 HEADER ### " "
nmap <f12> :FortyTwoHeader<CR>
let b:fortytwoheader_user="wszurkow"
let b:fortytwoheader_mail="marvin@42.fr"

" "### NERDTREE ### " "
" Start NERDTree
"autocmd VimEnter * NERDTree
" " Go to previous (last accessed) window.
autocmd VimEnter * wincmd p"

" "### ALE ### " "
"let g:ale_enabled = 1
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1
"let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 0
let g:ale_hover_cursor = 0
" # Propreties #  "
" bold, underline, undercurl, strikethrough, reverse, italic, standout,  nocombine
highlight ALEError ctermfg=Red cterm=italic 
highlight ALEWarning ctermfg=Yellow cterm=italic
highlight ALEStyleWarning ctermbg=none cterm=none
highlight ALEStyleError ctermbg=none cterm=none
 
function! LinterStatus() abort 
	let l:counts = ale#statusline#Count(bufnr(''))
  
	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors
  
	return l:counts.total == 0 ? 'OK' : printf(
				\   '%dW %dE', 
				\   all_non_errors, 
				\   all_errors 
				\) 
endfunction 
set statusline=%{LinterStatus()} 

" "### VISUAL-MULTIPLE-CURSORS ### " "
let g:VM_maps = {}
let g:VM_maps['Find Under']                  = '<C-n>'
let g:VM_maps['Find Subword Under']          = '<C-n>'
let g:VM_maps["Select All"]                  = '\\A' 
let g:VM_maps["Start Regex Search"]          = '\\/'
let g:VM_maps["Add Cursor Down"]             = '<C-j>'
let g:VM_maps["Add Cursor Up"]               = '<C-k>'
let g:VM_maps["Add Cursor At Pos"]           = '\\\'

let g:VM_maps["Visual Regex"]                = '\\/'
let g:VM_maps["Visual All"]                  = '\\A' 
let g:VM_maps["Visual Add"]                  = '\\a'
let g:VM_maps["Visual Find"]                 = '\\f'
let g:VM_maps["Visual Cursors"]              = '\\c'

" "### FZF ### " "
nnoremap <silent> <C-f> :Files<CR>
let g:fzf_preview_window = 'right:60%'

" "### UNDOTREE ### " "
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
	set undodir=$HOME."/.undodir"
	set undofile
endif

" "#################################################" "
