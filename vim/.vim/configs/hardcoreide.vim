source ~/.vim/configs/ide.vim
source ~/.vim/configs/hardcoremode.vim

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
"nmap <F3> : NERDTreeFocus<CR> " Move focus to NERDTree
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
