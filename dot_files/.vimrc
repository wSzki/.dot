" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: wszurkow <wszurkow@student.42.fr>          +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/09/29 17:22:42 by wszurkow          #+#    #+#              "
"    Updated: 2020/10/01 12:12:07 by wszurkow         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"check > vimawesome.com
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" "#################################################" "
" "### NATIVE ###" "
" "#################################################" "

"Centering Cursor
"augroup VCenterCursor
"  au!
"  au BufEnter,WinEnter,WinNew,VimResized *,*.*
"        \ let &scrolloff=winheight(win_getid())/2
"augroup END

" General settings
set nu
syntax on
set scrolloff=5
set relativenumber
set clipboard=unnamedplus
set encoding=utf-8
set history=1000
set noswapfile

" Key maps
nmap <f11> :windo set relativenumber!<CR>
map gg gg=G''
"map gg gg=G``
"map <C-r> :redo<CR>``

" Indentation
filetype indent on
set autoindent
set cindent
set smartindent

" Lines, rulers, anti word wrap
set linebreak
set ruler
set cursorline
set nowrap

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <CR> :noh<CR><CR>

"Split
set splitbelow
set splitright

" Tabs & Spaces
set tabstop=4
set shiftwidth=4

" Performance
set complete-=5
set lazyredraw
set re=1
set timeoutlen=1000
set ttimeoutlen=0
set synmaxcol=200
syntax sync minlines=256
"set nocursorcolumn
"set nocursorline
"set norelativenumber

" WILDMENU
"set wildmode=longest,list,full
"set wildmode=list
set wildmode=longest:full,full
set wildmenu
set wildignorecase

" Activate Mouse
set mouse=a
set splitright

" Whitespaces
set list
set listchars=space:.,tab:•-,trail:~,extends:>,precedes:<
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" No Indent Pasting
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

" Unknown
" set hidden
" set noshowmode

" Pasteboard
"nmap <f9>:w !xclip -i -sel c<CR>
":w !xclip -sel c

" "#######################################################################################################################" "

" "#################################################" "
" "### SNIPPETS ###"
" "#################################################" "

noremap <Leader>libft i#include "libft.h"<CR><ESC>
noremap <Leader>stdlib i#include <stdlib.h><CR><ESC>
noremap <Leader>stdlio i#include <stdio.h><CR><ESC>
noremap <Leader>unistd i#include <unistd.h><CR><ESC>
noremap <Leader>main iint	main(int ac, char **av)<CR>{<CR>}<Up><CR>
noremap <Leader>while iwhile()<CR>{<CR>}<Up><CR><Up><Up><End><ESC>gg=G`` i


" "#######################################################################################################################" "

" "#################################################" "
" "### PLUG ###"
" "#################################################" "
" PlugInstall, PlugClean
call plug#begin('~/.vim/plugged')
"###############################"
"Plug 'VundleVim/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'pandark/42header.vim'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'ericbn/vim-relativize'
Plug 'coldfix/hexhighlight'
Plug 'raimondi/delimitmate'
Plug 'cpiger/NeoDebug'
Plug 'wSzki/vim-smooth-scroll'
Plug 'gelguy/wilder.nvim'
Plug 'arcticicestudio/nord-vim'
"Plug 'puremourning/vimspector'
"Plug 'cskeeters/vim-smooth-scroll'
"Plug 'gko/vim-coloresque'
"Plug 'junegunn/vim-easy-align'
"Plug 'yuttie/comfortable-motion.vim'
"Plug 'c0r73x/colorizer'
"Plug 'jiangmiao/auto-pairs'
"Plug 'chrisbra/Colorizer'
"Plug 'terryma/vim-smooth-scroll'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'wfxr/minimap.vim'
"Plug 'majutsushi/tagbar'
"###############################"
call plug#end()

" "#######################################################################################################################" "

" "#################################################" "
" "### WILDMENU  ### " "
" "#################################################" "

call wilder#enable_cmdline_enter()
set wildcharm=<Tab>
cmap <expr> <Tab> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <S-Tab> wilder#in_context() ? wilder#previous() : "\<S-Tab>"
" only / and ? is enabled by default
call wilder#set_option('modes', ['/', '?', ':'])

" "#################################################" "
" "### VIMSPECTOR ### " "
" "#################################################" "
"packadd! vimspector
"let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
"let g:vimspector_enable_mappings = 'HUMAN'

" "#################################################" "
" "### GRUVBOX ### " "
" "#################################################" "
set background=dark
let g:gruvbox_contrast_dark='hard'
let g:airline_theme='gruvbox'
let g:gruvbox_improved_warnings=1
"let g:gruvbox_sign_color='none'
"let g:gruvbox_improved_strings=1
colorscheme gruvbox

" "#################################################" "
" "### RAINBOW BRACKETS ### " "
" "#################################################" "
"let g:rainbow_active = 1
map <C-b> :RainbowToggle<CR>

" "#################################################" "
" "### NERDTREE ### " "
" "#################################################" "
"autoquit if only left is nerdtree
augroup vimrc_autocmd
	autocmd!
	"toggle quickfix window
	autocmd BufReadPost quickfix map <buffer> <leader>qq :cclose<cr>|map <buffer> <c-p> <up>|map <buffer> <c-n> <down>
	autocmd FileType unite call s:unite_settings()
	" obliterate unite buffers (marks especially).
	autocmd BufLeave \[unite\]* if "nofile" ==# &buftype | setlocal bufhidden=wipe | endif
	" Jump to the last position when reopening a file
	"autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" Start NERDTree
	"autocmd VimEnter * NERDTree
	" Go to previous (last accessed) window.
	autocmd VimEnter * wincmd p
	nmap <C-p> :NERDTreeToggle<CR>
augroup END

" "#################################################" "
" "### Minimap ### " "
" "#################################################" "
"let g:minimap_width = 1
"let g:minimap_highlight = 'Keyword'
"let g:minimap_auto_start = 1
"autocmd VimEnter * Minimap
"autocmd VimEnter * wincmd p

" "#################################################" "
" "### SMOOTH SCROLL ### " "
" "#################################################" "
noremap <silent> <PageUp> :call smooth_scroll#up(&scroll*2, 1, 4)<CR>
noremap <silent> <PageDown> :call smooth_scroll#down(&scroll*2, 1, 4)<CR>
inoremap <silent> <PageUp> <ESC>:call smooth_scroll#up(&scroll*2, 1, 4)<CR>i
inoremap <silent> <PageDown> <ESC>:call smooth_scroll#down(&scroll*2, 1, 4)<CR>i
"let g:comfortable_motion_no_default_key_mappings = 1
"let g:comfortable_motion_no_default_key_mappings = 1
"let g:comfortable_motion_no_default_key_mappings = 1
"let g:comfortable_motion_friction = 100.0
"let g:comfortable_motion_air_interval = 600/60
"let g:comfortable_motion_air_drag = 4.0
"nnoremap <silent> <PageDown> :call comfortable_motion#flick(600)<CR>
"nnoremap <silent> <PageUp> :call comfortable_motion#flick(-600)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
"noremap <silent> <PageUp> :call smooth_scroll#up(&scroll, 3, 1)<CR>
"noremap <silent> <PageDown> :call smooth_scroll#down(&scroll, 3, 1)<CR>

" "#################################################" "
" "### HEX HIGHLIGHT### " "
" "#################################################" "
nmap <F2>           <Plug>ToggleHexHighlight
nmap <leader><F2>   <Plug>ToggleSchemeHighlight

" "#################################################" "
" "### YCM ### " "
" "#################################################" "
" YcmRestartServer to reload
let g:ycm_auto_trigger = 0
let g:ycm_max_num_candidates = 15
let g:ycm_max_num_identifier_candidates = 15
let g:ycm_min_num_of_chars_for_completion = 2
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
" turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

" "#################################################" "
" "### 42 HEADER ### " "
" "#################################################" "
nmap <f12> :FortyTwoHeader<CR>
let b:fortytwoheader_user="wszurkow"
let b:fortytwoheader_mail="wszurkow@student.42.fr"

" "#################################################" "
" "### PEEKABOO ### " "
" "#################################################" "
"let g:peekaboo_compact=1

" "#################################################" "
" "### ALE ### " "
" "#################################################" "
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_hover_cursor = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖✖'
let g:ale_sign_warning = '∙∙'
"let g:ale_enabled = 1
"let g:ale_lint_on_text_changed = 'always'

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

" "#################################################" "
" "### VISUAL-MULTIPLE-CURSORS ### " "
" "#################################################" "
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

" "#################################################" "
" "### FZF ### " "
" "#################################################" "
nnoremap <silent> <C-f> :Files<CR>
let g:fzf_preview_window = 'right:60%'

" "#################################################" "
" "### UNDOTREE ### " "
" "#################################################" "
nnoremap <C-u> :UndotreeToggle<cr>
let g:undotree_WindowLayout = 2
let g:undotree_ShortIndicators = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HighlightChangedText = 1
let g:undotree_HelpLine = 1
try
	set undodir=~/.undodir
	set undofile
catch
endtry
"if has("persistent_undo")
"	set undodir=$HOME."/.undodir"
"	set undofile
"endif
" undotree window width

" "#################################################" "
" "#################################################" "
