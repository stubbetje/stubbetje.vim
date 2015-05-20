" Modeline and Notes {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
"                 __  ___       __   __   ___ ___       ___
"                /__`  |  |  | |__) |__) |__   |     | |__   \  / |  |\/| 
"                .__/  |  \__/ |__) |__) |___  |  \__/ |___ . \/  |  |  | 
"
"
"

" Basic required settings {

    set nocompatible              " be iMproved, required
    filetype off                  " required

" }

" Setup Vundle and install bundles {

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#rc()

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    Plugin 'tpope/vim-fugitive'

    " Color schemes {
        Plugin 'Wombat'
        Plugin 'morhetz/gruvbox'
        Plugin 'flazz/vim-colorschemes'

        set background=dark
        color gruvbox
    " }

    " Vim airline {
        Plugin 'bling/vim-airline'
        let g:airline_section_a = airline#section#create(['%<', 'file', 'readonly'])
        let g:airline_section_b = '' " airline#section#create_left(['mode', 'paste', 'iminsert'])
        let g:airline_section_c = '' " airline#section#create(['hunks'])
        let g:airline_section_gutter = airline#section#create(['%=%y%m%r[%{&ff}]'])
        let g:airline_section_x = '' " airline#section#create_right(['filetype'])
        " let g:airline_section_y = '%y%m%r%=[%{&ff}]' "airline#section#create_right(['ffenc'])
        let g:airline_section_z = airline#section#create(['%(%l,%c%V%) %P'])
        let g:airline_section_warning = '' "airline#section#create(['whitespace'])

        set laststatus=2
    " }

    " Ctrl P {
        Plugin 'kien/ctrlp.vim'
    " }

    filetype plugin indent on    " required

" }

syn on

set ts=4 sw=4
set smartindent

set enc=utf8
set listchars=eol:¶,trail:~,tab:→\ 
set list
set nu
