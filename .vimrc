syntax on
set history=1000
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hidden
set incsearch
set hlsearch
set ignorecase
set smartcase
"set wildmenu
set wildmode=list:longest
" set autoindent
set smartindent
set dir=/tmp
set cot-=preview
set path+=./**
set linebreak
filetype plugin indent on
let mapleader="-"

"Vundle config
    set nocompatible
    filetype off

    "Setup Vundle
        let vundleSetup=1
        let vundle_readme=expand("~/.vim/bundle/vundle/README.md")
        if !filereadable(vundle_readme)
            echo "Installing Vundle..."
            echo ""
            silent !mkdir -p ~/.vim/bundle
            silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
            let vundleSetup=0
        endif
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
        Bundle 'gmarik/vundle'
    "End Setup Vundle

    "Bundles
        "General Vim
            Bundle 'scrooloose/nerdtree'
            Bundle 'EasyMotion'
        "End General Vim

        "Color Schemes
            Bundle 'altercation/vim-colors-solarized'
        "End Color Schemes

        if vundleSetup == 0
            echo "Installing Bundles"
            echo ""
            :BundleInstall
        endif
"End Vundle config

filetype plugin on

let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_WinWidth = 70
nmap<silent><leader>m :TlistToggle<cr>

set completeopt=menuone,longest

if has("autocmd")
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd BufRead,BufNewFile *.gradle set filetype=groovy
endif

"improve autocomplete menu color
highlight Pmenu ctermbg=4 gui=bold

"if len(glob('$HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim'))
"    se t_Co=16
"    set background=dark
"    colorscheme solarized
"endif
colorscheme peachpuff

highlight clear SpellBad
highlight SpellBad cterm=underline ctermfg=red

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

vnoremap <C-c><C-c> <Plug>SendSelectionToTmux
nnoremap <C-c><C-c> <Plug>NormalModeSendToTmux
nnoremap <C-c>r <Plug>SetTmuxVars

"open my .vimrc file in a split pane
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"NERDTree keymaps
nnoremap <leader>nt :NERDTree<cr>
nnoremap <leader>ntt :NERDTreeToggle<cr>

"exit insert mode without use of <esc> key
inoremap jk <esc>

"manipulate windows without ctrl key
"nnoremap wj <C-w>j
"nnoremap wk <C-w>k
"nnoremap wh <C-w>h
"nnoremap wl <C-w>l
"nnoremap wv  <C-w>v
"nnoremap wq <C-w>q

highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black
