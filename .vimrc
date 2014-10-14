set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Lean & mean status/tabline for vim that's light as air.
Plugin 'bling/vim-airline'

" The NERD tree allows you to explore your filesystem and to open files and
" directories.
Plugin 'scrooloose/nerdtree.git'

" HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim. Based on the default htmlcomplete.vim.
Plugin 'othree/html5.vim.git'

" Solarized Colorscheme for Vim
Plugin 'altercation/vim-colors-solarized.git'

" This is a vim syntax file for PlantUML.
Plugin 'aklt/plantuml-syntax'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
" tags, and more
Plugin 'surround.vim'

" Syntastic is a syntax checking plugin for Vim that runs files through external syntax checkers and displays any resulting errors to the user
Plugin 'syntastic'
" This plugin highlights the matching HTML tag when the cursor is positioned
" on a tag. It works in much the same way as the MatchParen plugin.
Plugin 'MatchTag'

" This plugin makes use of external formatprograms to achieve the best result.
Bundle "Chiel92/vim-autoformat"

" XML Edit is a file type plugin to help edit XML documents. It includes tag
" completion and tag jumping.
Bundle "sukima/xmledit.git"

" Now we can turn our filetype functionality back on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" 
" Turn on syntax highlighting
syntax on

"  change out settings so the "anonymous" register is aliased to the *
"  register using
set clipboard=unnamed

" To display the status line always
set laststatus=2

" automatically populate the g:airline_symbols dictionary with the powerline
" symbols
let g:airline_powerline_fonts=1

" Solarized colors plugin options
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" PlantUML plugin key mapping
let g:plantuml_executable_script='java -jar /home/emm13775/Aplicaciones/plantuml.8007.jar'
nnoremap <F5> :w<CR> :silent make<CR>
inoremap <F5> <Esc>:w<CR>:silent make<CR>
vnoremap <F5> :<C-U>:w<CR>:silent make<CR
