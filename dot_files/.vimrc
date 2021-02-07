
" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: wszurkow <wszurkow@student.42.fr>          +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/09/29 17:22:42 by wszurkow          #+#    #+#              "
"    Updated: 2020/10/07 15:58:18 by wszurkow         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "


"check > vimawesome.com
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"################################################ "
"### VIMPLUG INSTALL ### "
"################################################ "

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"################################################ "
"### NATIVE ## "
"################################################ "

"nmap <F7> <Plug>(scnvim-send-block)
"Centering Cursor

"augroup VCenterCursor
"  au!
"  au BufEnter,WinEnter,WinNew,VimResized *,*.*
"        \ let &scrolloff=winheight(win_getid())/2
"augroup END

" General settings
set clipboard=unnamedplus
set nu
syntax on
set scrolloff=5
set relativenumber
set laststatus=2
set background=dark
set encoding=utf-8
set history=1000
set noswapfile
set foldmethod=manual
"set signcolumn=number

" Folding - remember
augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END

augroup SaveManualFolds
	autocmd!
	au BufWinLeave, BufLeave ?* silent! mkview
	au BufWinEnter           ?* silent! loadview
augroup END


" Key maps
nmap <f11> :windo set relativenumber!<CR>
map gg gg=G''zz
"map gg gg=G``
"map <C-r> :redo<CR>``

" Indentation
filetype indent on
set autoindent
set cindent
set smartindent

" Autoindent on save
"augroup autoindent
"au!
"autocmd BufWritePre * :normal migg=G`i
"augroup End

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

" Split
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
set nocursorcolumn
set nocursorline
"set norelativenumber

" Wildmenu
"set wildmode=longest,list,full
"set wildmode=list
set wildmode=longest:full,full
set wildmenu
set wildignorecase

"" True Color settings
if has('termguicolors')
	set termguicolors
endif
"" Correct RGB escape codes for vim inside tmux
"if !has('nvim') && $TERM ==# 'screen-256color'
"	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif

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

"################################################ "
"### SNIPPETS ###"
"################################################ "

" ### GLOBAL
"noremap <Leader>pi :so% <CR> :PlugInstall<CR><ESC>
noremap <Leader>wso :w <CR>:so % <CR><ESC>

nnoremap <C-w> <ESC><ESC><ESC>:w<CR><ESC>
inoremap <C-w> <ESC><ESC>:w<CR><ESC>i

" Remap visual block
nnoremap <C-e> <C-q>

nnoremap <C-q> <ESC><ESC>:q<CR>
inoremap <C-q> <ESC><ESC>:q<CR>

" ### C
" Libraries
noremap <Leader>libft i#include "libft.h"<CR><ESC>
noremap <Leader>stdlib i#include <stdlib.h><CR><ESC>
noremap <Leader>stdio i#include <stdio.h><CR><ESC>
noremap <Leader>unistd i#include <unistd.h><CR><ESC>
noremap <Leader>stdarg i#include <stdarg.h><CR><ESC>

" Misc
noremap <Leader>main iint	main(int ac, char **av)<CR>{<CR>}<Up><CR>
noremap <Leader>while iwhile()<CR>{<CR>}<Up><CR><Up><Up><End><ESC>gg=G`` i

" Printf
noremap <Leader>pd i<Right><CR>printf("%d\n", );<Left><Left>
noremap <Leader>pi i<Right><CR>printf("%i\n", );<Left><Left>
noremap <Leader>ps i<Right><CR>printf("%s\n", );<left><Left>

" Int min & max
noremap <Leader>intmax i2147483647
noremap <Leader>intmin i-2147483648



"################################################ "
"### PLUG ###"
"################################################ "
" PlugInstall, PlugClean
call plug#begin('~/.vim/plugged')
"###############################"

" ####### "
"   Vim   "
" ####### "

if has (!('nvim'))
	Plug 'ervandew/supertab'
	Plug 'dense-analysis/ale'
	Plug 'ycm-core/YouCompleteMe'
endif
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'pandark/42header.vim'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-gitgutter'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'ericbn/vim-relativize'
Plug 'chrisbra/colorizer'
Plug 'raimondi/delimitmate'
Plug 'wszki/vim-smooth-scroll'
Plug 'tommcdo/vim-exchange'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"WEB DEV
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'gorodinskiy/vim-coloresque'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'neoclide/vim-jsx-improve'
Plug 'gregsexton/matchtag'
"Plug 'rstacruz/sparkup'
"Plug 'ap/vim-css-color'

if has (!('nvim'))
	Plug 'ervandew/supertab'
	Plug 'dense-analysis/ale'
endif

" ###### "
" Neovim "
" ###### "
if has ('nvim')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }
endif


" ####### "
" Archive "
" ####### "
" -------- VIM --------
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'vim-scripts/restore_view.vim'" bugged
"Plug 'psliwka/vim-smoothie'
"Plug 'vim-syntastic/syntastic'
"Plug 'sheerun/vim-polyglot'
"Plug 'coldfix/hexhighlight'
"Plug 'puremourning/vimspector'
"Plug 'arcticicestudio/nord-vim'
"Plug 'gelguy/wilder.nvim'
"Plug 'gko/vim-coloresque'
"Plug 'junegunn/vim-easy-align'
"Plug 'yuttie/comfortable-motion.vim'
"Plug 'c0r73x/colorizer'
"Plug 'jiangmiao/auto-pairs'
"Plug 'chrisbra/Colorizer'
"Plug 'lucasicf/vim-smooth-scroll'
"Plug 'cskeeters/vim-smooth-scroll'
"Plug 'terryma/vim-smooth-scroll'
"Plug 'lucasicf/vim-smooth-scroll'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'wfxr/minimap.vim'
"Plug 'majutsushi/tagbar'

" ------- NVIM --------
"Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
"Plug 'josa42/coc-sh'
"Plug 'tjdevries/coc-zsh'
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'Xuyuanp/scrollbar.nvim'
"Plug 'cpiger/NeoDebug'
"
"###############################"
call plug#end()


" #############
" SUPERCOLLIDER
" #############
if has ('nvim')
	noremap <Leader>sc :SCNvimStart<CR><ESC>
	let g:scnvim_scdoc = 1
	let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'scnvim-data']
	let g:scnvim_postwin_orientation = 'h'
	let g:scnvim_postwin_size = 18
	"lt g:scnvim_postwin_auto_toggle = 1
	"function! s:set_sclang_statusline()
	"		setlocal stl=
	"		setlocal stl+=%f
	"		setlocal stl+=%=
	"		setlocal stl+=%(%l,%c%)
	"		setlocal stl+=\ \|
	"		setlocal stl+=%24.24{scnvim#statusline#server_status()}
	"	endfunction
	"
	"	augroup scnvim_stl
	"		autocmd!
	"		autocmd FileType supercollider call <SID>set_sclang_statusline()
	"	augroup END
	"	" lightline.vim example
	"	let g:lightline = {}
	"	let g:lightline.component_function = {
	"				\ 'server_status': 'scnvim#statusline#server_status',
	"				\ }
	"	let g:lightline.active = {
	"				\ 'left':  [ [ 'mode', 'paste' ],
	"				\          [ 'readonly', 'filename', 'modified' ] ],
	"				\ 'right': [ [ 'lineinfo' ],
	"				\            [ 'percent' ],
	"				\            [ 'server_status'] ]
	"				\ }
endif

"################################################ "
"### UTILSNIPS ###
"################################################ "
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'scnvim-data']


"################################################ "
"### NCOC ### "
"################################################ "
":CocInstall coc- > clangd cmake fzf-preview sh snippets yank html css
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent>  <C-j> <Plug>(coc-diagnostic-next)
"inoremap <silent><expr> <TAB>
			"\ pumvisible() ? "\<C-n>" :
			"\ <SID>check_back_space() ? "\<TAB>" :
			"\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"################################################ "
"### GRUVBOX MATERIAL ### "
"################################################ "
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_menu_selection_background = 'yellow'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_palette = {
			\ 'bg0':              ['#191d20',   '234'],
			\ 'bg1':              ['#262727',   '235'],
			\ 'bg2':              ['#191d20',   '235'],
			\ 'bg3':              ['#3c3836',   '237'],
			\ 'bg4':              ['#3c3836',   '237'],
			\ 'bg5':              ['#504945',   '239'],
			\ 'bg_statusline1':   ['#1f2428',   '235'],
			\ 'bg_statusline2':   ['#32302f',   '235'],
			\ 'bg_statusline3':   ['#504945',   '239'],
			\ 'bg_diff_green':    ['#32361a',   '22'],
			\ 'bg_visual_green':  ['#333e34',   '22'],
			\ 'bg_diff_red':      ['#3c1f1e',   '52'],
			\ 'bg_visual_red':    ['#442e2d',   '52'],
			\ 'bg_diff_blue':     ['#0d3138',   '17'],
			\ 'bg_visual_blue':   ['#2e3b3b',   '17'],
			\ 'bg_visual_yellow': ['#473c29',   '94'],
			\ 'bg_current_word':  ['#32302f',   '236'],
			\ 'fg0':              ['#d4be98',   '223'],
			\ 'fg1':              ['#ddc7a1',   '223'],
			\ 'red':              ['#ea6962',   '167'],
			\ 'orange':           ['#EBCB8B',   '208'],
			\ 'yellow':           ['#d8a657',   '214'],
			\ 'green':            ['#A3BE8C',   '142'],
			\ 'aqua':             ['#D08770',   '108'],
			\ 'blue':             ['#7C9C90',   '109'],
			\ 'purple':           ['#e78a4e',   '175'],
			\ 'bg_red':           ['#ea6962',   '167'],
			\ 'bg_green':         ['#a9b665',   '142'],
			\ 'bg_yellow':        ['#d8a657',   '214'],
			\ 'grey0':            ['#7c6f64',   '243'],
			\ 'grey1':            ['#928374',   '245'],
			\ 'grey2':            ['#a89984',   '246'],
			\ 'none':             ['NONE',      'NONE']
			\ }
colorscheme gruvbox-material

"################################################ "
"### AIRLINE ### "
"################################################ "
"
let g:airline_theme='gruvbox_material'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='base16'
"let g:airline#extensions#tabline#formatter = 'default'
"
"################################################ "
"### RAINBOW BRACKETS ### "
"################################################ "
"
map <C-b> :RainbowToggle<CR>
"let g:rainbow_active = 1

"################################################ "
"### NERDTREE ### "
"################################################ "
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


"################################################ "
"### SMOOTH SCROLL ### "
"################################################ "

noremap <silent> <PageUp> :call smooth_scroll#up(25, 3, 1)<CR>
noremap <silent> <PageDown> :call smooth_scroll#down(25, 3, 1)<CR>
inoremap <silent> <PageUp> <ESC>:call smooth_scroll#up(25, 3, 1)<CR>
inoremap <silent> <PageDown> <ESC>:call smooth_scroll#down(25, 3, 1)<CR>


"################################################ "
"### 42 HEADER ### "
"################################################ "

nmap <F12> :FortyTwoHeader<CR>
let b:fortytwoheader_user="wszurkow"
let b:fortytwoheader_mail="wszurkow@student.42.fr"

"################################################ "
"### HEX HIGHLIGHT### "
"################################################ "

"nmap <F2>			<ESC>:ColorToggle<CR>
"nmap <F2>           <Plug>ToggleHexHighlight
"nmap <leader><F2>   <Plug>ToggleSchemeHighlight

"################################################ "
"### VISUAL-MULTIPLE-CURSORS ### "
"################################################ "
let g:VM_maps = {}
let g:VM_maps['Find Under']                  = '<C-n>'
let g:VM_maps['Find Subword Under']          = '<C-n>'
let g:VM_maps["Select All"]                  = '\\A'
let g:VM_maps["Start Regex Search"]          = '\\/'
let g:VM_maps["Add Cursor Down"]             = '<C-Down>'
let g:VM_maps["Add Cursor Up"]               = '<C-Up>'
let g:VM_maps["Add Cursor At Pos"]           = '\\\'

let g:VM_maps["Visual Regex"]                = '\\/'
let g:VM_maps["Visual All"]                  = '\\A'
let g:VM_maps["Visual Add"]                  = '\\a'
let g:VM_maps["Visual Find"]                 = '\\f'
let g:VM_maps["Visual Cursors"]              = '\\c'

"################################################ "
"### FZF ### "
"################################################ "
nnoremap <silent> <C-f> :Files<CR>
let g:fzf_preview_window = 'right:60%'

"################################################ "
"### UNDOTREE ### "
"################################################ "
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

"################################################ "
"################################################ "
"################################################ "
"################################################ "
"################################################ "
"
"################################################ "
"### GRUVBOX ### "
"################################################ "


" Classic
"let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_improved_warnings=1
"let g:gruvbox_sign_color='none'
"let g:gruvbox_improved_strings=1
"colorscheme gruvbox

"################################################ "
"### YCM ### "
"################################################ "

" YcmRestartServer to reload
"let g:ycm_auto_trigger = 0
"let g:ycm_max_num_candidates = 15
"let g:ycm_max_num_identifier_candidates = 15
"let g:ycm_min_num_of_chars_for_completion = 2
"nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
"" turn off YCM
"nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
"
"################################################ "
"### ALE ### "
"################################################ "

"let g:ale_set_highlights = 1
"let g:airline#extensions#ale#enabled = 1
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 1
"let g:ale_lint_on_enter = 1
"let g:ale_hover_cursor = 1
"let g:ale_set_balloons = 1
"let g:ale_hover_to_preview = 1
"let g:ale_cursor_details =1
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '✖✖'
"let g:ale_sign_warning = '∙∙'
"let g:ale_open_list = 0
"let g:ale_change_sign_column_color = 1
"let g:ale_list_vertical = 0
"let g:ale_set_quickfix = 0
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
""let g:ale_enabled = 1
""let g:ale_lint_on_text_changed = 'always'
"
"" # Propreties #  "
"" bold, underline, undercurl, strikethrough, reverse, italic, standout,  nocombine
"highlight ALEError ctermfg=Red cterm=italic
"highlight ALEWarning ctermfg=Yellow cterm=italic
"highlight ALEStyleWarning ctermbg=none cterm=none
"highlight ALEStyleError ctermbg=none cterm=none
"
"function! LinterStatus() abort
"	let l:counts = ale#statusline#Count(bufnr(''))
"	let l:all_errors = l:counts.error + l:counts.style_error
"	let l:all_non_errors = l:counts.total - l:all_errors
"
"	return l:counts.total == 0 ? 'OK' : printf(
"				\   '%dW %dE',
"				\   all_non_errors,
"				\   all_errors
"				\)
"endfunction
"set statusline=%{LinterStatus()}

"################################################ "
"### Minimap ### "
"################################################ "

"let g:minimap_width = 1
"let g:minimap_highlight = 'Keyword'
"let g:minimap_auto_start = 1
"autocmd VimEnter * Minimap
"autocmd VimEnter * wincmd p

"################################################ "
"### WILDMENU  ### "
"################################################ "

"call wilder#enable_cmdline_enter()
"set wildcharm=<Tab>
"cmap <expr> <Tab> wilder#in_context() ? wilder#next() : "\<Tab>"
"cmap <expr> <S-Tab> wilder#in_context() ? wilder#previous() : "\<S-Tab>"
""" only / and ? is enabled by default
"call wilder#set_option('modes', ['/', '?', ':'])

"################################################ "
"### VIMSPECTOR ### "
"################################################ "

"packadd! vimspector
"let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
"let g:vimspector_enable_mappings = 'HUMAN'


"################################################ "
"### PEEKABOO ### "
"################################################ "
"let g:peekaboo_compact=1


"################################################ "
"### SMOOTH SCROLL ### "
"################################################ "
"noremap <silent> <PageUp> 20kzb
"noremap <silent> <PageDown> 20jzb
"inoremap <silent> <PageUp> <ESC> 20kzbi
"inoremap <silent> <PageDown> <ESC> 20jzbi
"inoremap <silent> <PageUp> <ESC>:call smooth_scroll#up(&scroll*2, 1, 4)<CR>i
"inoremap <silent> <PageDown> <ESC>:call smooth_scroll#down(&scroll*2, 1, 4)<CR>i
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


"################################################ "
"### SYNTASTIC ### "
"################################################ "

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"################################################ "
"### SCROLLBAR ### "
"################################################ "

"augroup ScrollbarInit
"  autocmd!
"  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"  autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
"augroup end



"################################################ "
"
" SCROLL BAR - not working
"
"func! STL()
"  let stl = '%f [%{(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?",B":"")}%M%R%H%W] %y [%l/%L,%v] [%p%%]'
"  let barWidth = &columns - 65 " <-- wild guess
"  let barWidth = barWidth < 3 ? 3 : barWidth
"
"  if line('$') > 1
"    let progress = (line('.')-1) * (barWidth-1) / (line('$')-1)
"  else
"    let progress = barWidth/2
"  endif
"
"  " line + vcol + %
"  let pad = strlen(line('$'))-strlen(line('.')) + 3 - strlen(virtcol('.')) + 3 - strlen(line('.')*100/line('$'))
"  let bar = repeat(' ',pad).' [%1*%'.barWidth.'.'.barWidth.'('
"        \.repeat('-',progress )
"        \.'%2*0%1*'
"        \.repeat('-',barWidth - progress - 1).'%0*%)%<]'
"
"  return stl.bar
"endfun
"
"hi def link User1 DiffAdd
"hi def link User2 DiffDelete
"set stl=%!STL()
