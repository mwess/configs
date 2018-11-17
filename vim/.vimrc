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

call plug#begin()

" Plugins general

" Plugins Utility
"
"Plug 'scrooloose/nerdtree' ", {'on': []}
Plug 'https://github.com/scrooloose/nerdtree.git', {'on': []}
Plug 'jistr/vim-nerdtree-tabs' " nerdtree independent of tabs
Plug 'majutsushi/tagbar' ", {'on': []}
Plug 'vim-airline/vim-airline' ", {'on': []}
Plug 'tpope/vim-fugitive' ", {'on': []}
Plug 'vim-syntastic/syntastic' ", {'on': []}
Plug 'ervandew/supertab'
Plug 'wesQ3/vim-windowswap'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular' ", {'on': []}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'benmills/vimux'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'gilsondev/searchtasks.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'takac/vim-spotifysearch'
"Plug 'altercation/vim-colors-solarized' ", {'on': []}
"Plug 'scrooloose/nerdcommenter' ", {'on': []}
"Plug 'airblade/vim-gitgutter' ", {'on': []}
"Plug 'valloric/youcompleteme' ", {'on': [], 'do': 'python2 install.py --all'}
Plug 'easymotion/vim-easymotion' ", {'on': []}
"Plug 'honza/vim-snippets' ", {'on': []}
"Plug 'sheerun/vim-polyglot'
Plug 'mwess/Conque-Shell'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-dispatch'


" General programming
Plug 'jakedouglas/exuberant-ctags'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'
Plug 'tobyS/vmustache'
Plug 'janko-m/vim-test'
Plug 'maksimr/vim-jsbeautify'
Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'


Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Tmux stuff
Plug 'christoomey/vim-tmux-navigator'

"Plugin 'Twinside/vim-haskellFold'
"Plugin 'bitc/vim-hdevtools'
"Plugin 'lukerandall/haskellmode-vim'
"Plugin 'file:///home/maxi/Documents/Sensor Data Fusion/work/lammps-7Dec15/tools/vim/'

" Theme / Interface
"Plug 'ryanoasis/vim-devicons'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'sjl/badwolf'
"Plug 'tomasr/molokai'
"Plug 'morhetz/gruvbox'
"Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
"Plug 'junegunn/limelight.vim'
"Plug 'mkarmona/colorsbox'
"Plug 'romainl/Apprentice'
"Plug 'Lokaltog/vim-distinguished'
"Plug 'chriskempson/base16-vim'
"Plug 'w0ng/vim-hybrid'
"Plug 'AlessandroYorba/Sierra'
"Plug 'daylerees/colour-schemes'
"Plug 'effkay/argonaut.vim'
Plug 'ajh17/Spacegray.vim'
"Plug 'atelierbram/Base2Tone-vim'
"Plug 'colepeters/spacemacs-theme.vim'


" Rust plugin
Plug 'rust-lang/rust.vim'

" Julia plugin
Plug 'JuliaEditorSupport/julia-vim'

" Perl Plugin
Plug 'vim-perl/vim-perl'

" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" C++ Plugins
Plug 'vim-scripts/a.vim', {'on': []}
Plug 'vim-airline/vim-airline', " {'on': []}
Plug 'vim-airline/vim-airline-themes'


call plug#end()

source ~/.vim/configs/general.vim
source ~/.vim/configs/tmux.vim
source ~/.vim/configs/abbreviations.vim
