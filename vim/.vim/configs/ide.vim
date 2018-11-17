" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim


set nocompatible     "be iMproved, required

call plug#begin('~/.vim/plugged')


" Plugins General IDE
"
Plug 'https://github.com/scrooloose/nerdtree.git' ", {'on': []}
Plug 'jistr/vim-nerdtree-tabs' " nerdtree independent of tabs
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'vim-syntastic/syntastic' ", {'on': []} " syntax checker
Plug 'tpope/vim-fugitive' ", {'on': []} " Git plugin
Plug 'majutsushi/tagbar' ", {'on': []} " Browser fot objects and classes
Plug 'https://github.com/christoomey/vim-tmux-navigator'

"Plug 'vim-airline/vim-airline' ", {'on': []}
"Plug 'ervandew/supertab'
"Plug 'wesQ3/vim-windowswap'
"Plug 'SirVer/ultisnips'
"Plug 'junegunn/fzf.vim'
"Plug 'godlygeek/tabular' ", {'on': []}
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'benmills/vimux'
"Plug 'jeetsukumaran/vim-buffergator'
"Plug 'gilsondev/searchtasks.vim'
"Plug 'Shougo/neocomplete.vim'
"Plug 'takac/vim-spotifysearch'
""Plug 'altercation/vim-colors-solarized' ", {'on': []}
""Plug 'scrooloose/nerdcommenter' ", {'on': []}
""Plug 'airblade/vim-gitgutter' ", {'on': []}
""Plug 'valloric/youcompleteme' ", {'on': [], 'do': 'python2 install.py --all'}
"Plug 'easymotion/vim-easymotion' ", {'on': []}
""Plug 'honza/vim-snippets' ", {'on': []}
""Plug 'sheerun/vim-polyglot'
"Plug 'mwess/Conque-Shell'
"Plug 'Chiel92/vim-autoformat'
"Plug 'tpope/vim-dispatch'
"
"
"" General programming
"Plug 'jakedouglas/exuberant-ctags'
"Plug 'honza/vim-snippets'
"Plug 'Townk/vim-autoclose'
"Plug 'tobyS/vmustache'
"Plug 'janko-m/vim-test'
"Plug 'maksimr/vim-jsbeautify'
"Plug 'vim-syntastic/syntastic'
"Plug 'neomake/neomake'
"
"
"" Tmux stuff
"Plug 'christoomey/vim-tmux-navigator'
"
""Plugin 'Twinside/vim-haskellFold'
""Plugin 'bitc/vim-hdevtools'
""Plugin 'lukerandall/haskellmode-vim'
""Plugin 'file:///home/maxi/Documents/Sensor Data Fusion/work/lammps-7Dec15/tools/vim/'
"
" Theme / Interface
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'junegunn/limelight.vim'
Plug 'mkarmona/colorsbox'
Plug 'romainl/Apprentice'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Sierra'
Plug 'daylerees/colour-schemes'
Plug 'effkay/argonaut.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'derekwyatt/vim-scala'
Plug 'Shougo/deoplete.nvim'


" Rust plugin
Plug 'rust-lang/rust.vim'

" Julia plugin
Plug 'JuliaEditorSupport/julia-vim'

" Perl Plugin
Plug 'vim-perl/vim-perl'

""" Vim-Session
""Plug 'xolox/vim-misc'
""Plug 'xolox/vim-session'

" C++ Plugins
Plug 'vim-scripts/a.vim', {'on': []}
Plug 'vim-airline/vim-airline', " {'on': []}
Plug 'vim-airline/vim-airline-themes'

" Latex Plugin
Plug 'lervag/vimtex'

call plug#end()

source ~/.vim/configs/general.vim
source ~/.vim/configs/tmux.vim
source ~/.vim/configs/abbreviations.vim

" Start NERDTree on start
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
nmap <F3> : NERDTreeFocus<CR> " Move focus to NERDTree

"Tagbar stuff
nmap <F4> : TagbarToggle<CR>

"let g:session_autosave = 'no'
"
"let maplocalleader = ","
"" let mapleader = ","
"" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
"" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
"" and configure vim to your own liking!
"
"set expandtab           " replace tabs with spaces
"set tabstop=4		" Tab length = 4
"set shiftwidth=4 	" indent length = 4
"set number		" show line numbers
"set autoindent 		
"set background=dark
"set formatoptions+=1
"set linebreak
"set breakindent
"set cursorline "Enable highlighting of current line
"set hlsearch " highlight search results with yellow background
"set incsearch " search while typing 
"set pastetoggle=<F3> " paste mode when pressing F3. helpful with indentation
"set wrap " jump between visible lines
"nmap j gj 
"nmap k gk
"set ignorecase "ignore cases
"command Preview :!firefox %<CR>
"set hidden                      " makes it easier to switch between multiple files
"set wildmenu                    " Better command-line completion
"set showcmd                     " Show partial commands in the last line of the screen
"set backspace=indent,eol,start  " allow backspacing over autoindent, line breaks and start of insert action
"set laststatus=2                " Always display the status line
"set confirm                     " Instead of failing a command because of unsaved changes, instead raise a dialogue asking if you wish to save changed files.
"set visualbell                  " Use visual bell instead of beeping when doing something wrong.
"set mouse=a
"set foldmethod=syntax
"set exrc                        " Source .vimrc file if present in working directory. Useful for project-specific configuration
"set secure                      " This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed.
"set colorcolumn=100             " highlight the coloumn 100
"highlight ColorColumn ctermbg=darkgray
"syntax on
"set t_Co=256
"
"let base16colorspace=256
"colorscheme spacegray
"
"let g:spacegray_underline_search = 1
"let g:spacegray_italicize_comments = 1
"
""Add shortcut for autoformatting
"noremap <CTRL-ALT-l> :Autoformat<CR>
"
"" Start NERDTree on start
"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"
"
""Tagbar stuff
"nmap <F4> : TagbarToggle<CR>
"
"""somethin for haskell
""au BufEnter *.hs compiler ghc
""let g:haddock_browser="/usr/bin/firefox"
"
"" abbreviations
"
"" general
"
"abbr teh the
"
""" java
"
"abbr psvm public static void main(String[] args){<CR>}<esc>0
"abbr sop System.out.println()<esc>0
"
""" latex
"
"abbr enumi \begin{enumerate}<CR>\end{enumerate}<esc>0
"abbr itemi \begin{itemize}<CR>\end{itemize}<esc>0
"
""" c
"abbr imf int main(int argc, char **argv)<CR>{<CR>return 0;<CR>}<esc>0
"abbr istd #include "stdio.h"<CR>#include "stdlib.h"<CR><esc>0
"
"" command line abbreviations
"cabbr <expr> %% expand('%:p:h')
"
"
"" syntax on
"" filetype plugin indent on
"
"" Ease jumping between splits
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"
"" splits occur to right and to bottom
"set splitbelow
"set splitright
"
"let g:tmux_navigator_no_mappings = 1
"
"nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"nnoremap <silent> <c-z> :TmuxNavigatePrevious<cr>
"
"" Write all buffers before navigating from Vim to tmux pane
"let g:tmux_navigator_save_on_switch = 2
"
"" Disable tmux navigator when zooming the Vim pane
"let g:tmux_navigator_disable_when_zoomed = 1
