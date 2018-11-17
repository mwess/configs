let g:session_autosave = 'no'

let maplocalleader = ","
" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

set expandtab           " replace tabs with spaces
set tabstop=4		" Tab length = 4
set shiftwidth=4 	" indent length = 4
set number		" show line numbers
set autoindent 		
set background=dark
set formatoptions+=1
set linebreak
set breakindent
set cursorline "Enable highlighting of current line
set hlsearch " highlight search results with yellow background
set incsearch " search while typing 
set pastetoggle=<F5> " paste mode when pressing F5. helpful with indentation
set wrap " jump between visible lines
nmap j gj 
nmap k gk
set ignorecase "ignore cases
command Preview :!firefox %<CR>
set hidden                      " makes it easier to switch between multiple files
set wildmenu                    " Better command-line completion
set showcmd                     " Show partial commands in the last line of the screen
set backspace=indent,eol,start  " allow backspacing over autoindent, line breaks and start of insert action
set laststatus=2                " Always display the status line
set confirm                     " Instead of failing a command because of unsaved changes, instead raise a dialogue asking if you wish to save changed files.
set visualbell                  " Use visual bell instead of annoying beeping when doing something wrong.
set mouse=a
set foldmethod=syntax
set exrc                        " Source .vimrc file if present in working directory. Useful for project-specific configuration
set secure                      " This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed.
set colorcolumn=100             " highlight the coloumn 100
highlight ColorColumn ctermbg=darkgray
syntax on
set t_Co=256

let base16colorspace=256
colorscheme spacegray

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

"Add shortcut for autoformatting
noremap <CTRL-ALT-l> :Autoformat<CR>

" command line abbreviations
cabbr <expr> %% expand('%:p:h')


" syntax on
" filetype plugin indent on


" Ease jumping between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" splits occur to right and to bottom
set splitbelow
set splitright

"set vim's internal clipboard to system clipboard
set clipboard=unnamedplus " + and * are the same under windows, but in Linux they might differ


"term options
"Emulate usual vim behaviour in terminal mode. How to escape to usual Esc in
"tmode?
tnoremap <Esc> <C-W>N
