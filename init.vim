
call plug#begin('~/.config/nvim/plugged')


" This one is prefered over autoclose but its not working at the moment!
Plug 'jiangmiao/auto-pairs'
"Plug 'Townk/vim-autoclose'
Plug 'rbgrouleff/bclose.vim'
Plug 'FredKSchott/Covim'
"Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
"Plug 'vim-scripts/LustyExplorer'
"Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'wting/rust.vim'
Plug 'mtth/scratch.vim'
"Plug 'scrooloose/syntastic'
" This is supposed to replace syntastic, try it out
Plug 'benekastah/neomake'
"Plug 'majutsushi/tagbar'
"Plug 'mtscout6/vim-tagbar-css'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'edkolev/tmuxline.vim'
Plug 'SirVer/ultisnips'
"Plug 'csexton/snipmate.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'bling/vim-airline'
"Plug 'altercation/vim-colors-solarized'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'Lokaltog/vim-easymotion'
Plug 'szw/vim-g'
"Plug 'fatih/vim-go'
"Plug 'ryanss/vim-hackernews'
Plug 'pangloss/vim-javascript'
Plug 'farfanoide/vim-kivy'
Plug 'duff/vim-scratch'
Plug 'jpalardy/vim-slime'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-webdevicons'
Plug 'jimsei/winresizer'
Plug 'jelera/vim-javascript-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Shutnik/jshint2.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'
Plug 'lyxell/pride.vim'
"Plug 'jaxbot/browserlink.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'chriskempson/base16-vim'
Plug 'chrisbra/Colorizer'
"Plug 'digitaltoad/vim-jade'
Plug 'coachshea/jade-vim'
Plug 'burnettk/vim-angular'
Plug 'shuber/vim-promiscuous'
"Plug 'xolox/vim-easytags'
Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'Rip-Rip/clang_complete'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'vim-scripts/c.vim'
Plug 'tpope/vim-surround'
Plug 'edkolev/promptline.vim'
Plug 'mklabs/grunt.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rhysd/clever-f.vim'
Plug 'suan/vim-instant-markdown'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'
Plug 'wellle/visual-split.vim'
Plug 'othree/csscomplete.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'othree/jspc.vim'
"Plug 'ludovicchabant/vim-gutentags'
" makes nvim very very slow 
"Plug 'severin-lemaignan/vim-minimap'
Plug 'matze/vim-move'
"Plug 'Ioannis-Kapoulas/vim-autoprefixer'
Plug 'mxw/vim-jsx'

"extra installation step for tern
function! BuildTern(info)
        if a:info.status == 'installed' || a:info.force
                !npm install
        endif
endfunction

Plug 'marijnh/tern_for_vim', {'do': function('BuildTern')}

"extra installation step for YCM
function! BuildYCM(info)
        if a:info.status == 'installed' || a:info.force
                " requires python 2 to be your env python interpreter, change
                " if required
                !./install.py --clang-completer --gocode-completer --tern--completer
        endif
endfunction

Plug 'Valloric/YouCompleteMe', {'do': function('BuildYCM')}


call plug#end()

filetype plugin indent on

"" Regular vimrc stuff goes here

source ~/.config/nvim/vim_config
source ~/.config/nvim/vim_airline
"source ~/.config/nvim/vim_syntastic
source ~/.config/nvim/vim_neomake
source ~/.config/nvim/vim_tagbar
