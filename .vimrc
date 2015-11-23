set nocompatible 	" be iMproved, required
filetype off		  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Color Bundles
Plugin 'sjl/badwolf'

" Javascript bundle
Plugin 'ternjs/tern_for_vim'              " Js analysis (install required)
Plugin 'jelera/vim-javascript-syntax'     " order first
Plugin 'pangloss/vim-javascript'          " order next
Plugin 'mxw/vim-jsx'                      " react jsx syntax

" Editor improvement
Plugin 'Valloric/YouCompleteMe'           " Auto completion (install required)
Plugin 'scrooloose/nerdtree' 		          " Tree navigation
Plugin 'bling/vim-airline' 		            " Cool vim status bars
Plugin 'jeetsukumaran/vim-buffergator'	  " Buffer Manager
Plugin 'ciaranm/detectindent'	            " Detect indent settings automatically
Plugin 'Raimondi/delimitMate'             " Auto creates delimiters
Plugin 'nathanaelkane/vim-indent-guides'  " Nice ident guides <leader>ig
Plugin 'AndrewRadev/switch.vim'           " Switch stuff around
Plugin 'Lokaltog/vim-easymotion'          " Easy motion: search and getting around
Plugin 'junegunn/vim-easy-align'          " Align to equal signs

" Editor improvments 2
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

" Editor improvments 3: Text object Bundle
Plugin 'kana/vim-textobj-user'
Plugin 'glts/vim-textobj-comment'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'mattn/vim-textobj-url'

" File type specific
Plugin 'elzr/vim-json'                  " json file formating
Plugin 'briancollins/vim-jst'           " ejs file formating

" General bundles
Plugin 'scrooloose/syntastic'		        " code syntax check
Plugin 'SirVer/ultisnips'               " sippets

call vundle#end()            " required
filetype plugin indent on    " required

" *****************************************************************
" Reload vim when we make a change to the .vimrc file
" *****************************************************************
augroup reload_vimrc
autocmd!
autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" *****************************************************************
" Always put the preview on the bottom of the screen
" *****************************************************************
augroup PreviewOnBottom
  autocmd InsertEnter * set splitbelow
  autocmd InsertLeave * set splitbelow!
augroup END

" *****************************************************************
" Set editor properties
" *****************************************************************

syntax on
colors badwolf
set guioptions=                             " get rid of gui options
set guioptions-=L                           " disable the scrollbars
set guioptions-=r                           " disable the scrollbars
set guioptions-=R                           " disable the scrollbars

" Enable better indentation
set autoindent
set smarttab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Heaps of good stuff
set nu                                      " set line numbers
set fu                                      " set full screen
set clipboard=unnamed                       " allow the clipboard to be shared
set backspace=indent,eol,start              " improve the backspace key.
set noswapfile                              " disable the swap files.
set nofoldenable                            " disabled code folding. It can be weird sometimes.
set wildmenu                                " enable the tab complete menu.
set title                                   " show the file name in the window title bar.
set ignorecase                              " ignore case of searches.
set hlsearch                                " hightlight the search results
set cursorline                              " show the cursor line
set hidden                                  " allow changing buffer without saving
set nobackup                                " no backup of files
set nowritebackup
set noswapfile

" *****************************************************************
" Plugin configuration
" *****************************************************************

" reset the mapleader to be the comma (,)
let mapleader = ','

" tern settings
let g:tern_map_keys=1
let g:tern_show_argument_hints="on_hold"
let g:tern_show_signature_in_pum=1  " show properties of objects in dropdown

" ycm settings to remove preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0  " show a preview window
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui=1
let g:ycm_autoclose_preview_window_after_completion = 1   " close after input
let g:ycm_autoclose_preview_window_after_insertion = 1    " close after input

" setup buffergator on the right & show relative
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_show_full_directory_path = 0
let g:buffergator_vsplit_size = 50

" javascrit syntax checking
let g:syntastic_javascript_checkers = ['standard']
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_checkers = ['eslint']

" allow jsx to be parsed in .js files
let g:jsx_ext_required = 0

" toggle number style
let g:NumberToggleTrigger="<F2>"

" make sure a space is added before the comment
let g:NERDSpaceDelims=1

" ultisnips
set runtimepath+=~/Dropbox
let g:UltiSnipsSnippetsDir = "~/Dropbox/Vim"
let g:UltiSnipsSnippetDirectories = ["Vim"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" *****************************************************************
" Custom key mapping Map
" *****************************************************************
imap jk <Esc>
imap jj <Esc>

" NERDTree file navigation
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" tern stuff
nnoremap <leader>td :TernDef<CR>
nnoremap <leader>tb :TernDocBrowse<CR>
nnoremap <leader>tR :TernRename<CR>
nnoremap <leader>tr :TernRefs<CR>

" back one buffer
nnoremap <c-b> :b#<CR>

" gg=G will indent document
filetype indent on

" strips the trailing white space from the file.
nnoremap <leader>w :%s/\s\+$//e<CR>:nohl<CR>

" nerd commenter (gcc for simple comment)
map gcs <plug>NERDCommenterSexy

" Cancels the search. (c)
nnoremap <silent>c/ :nohlsearch<CR>

" switch things around
map sw :Switch<CR>

" surround with quotes
nmap en ys
nmap ys" ysiw"
nmap ys' ysiw'

" Easy motion config
nnoremap s <Plug>(easymotion-s2)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <space>j <Plug>(easymotion-j)
map <space>k <Plug>(easymotion-k)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gap <Plug>(EasyAlign)ii=<CR>
nmap ga <Plug>(EasyAlign)

" Open file in browser
map <leader>h :silent ! open %<CR>

" *****************************************************************
" swtich defs
" *****************************************************************
autocmd FileType Javascript let b:switch_custom_definitions =
  \ [
  \   ['console.log', 'grunt.log.error', 'grunt.log.ok', 'grunt.log.subhead'],
  \   ['white', 'black', 'grey', 'blue', 'cyan', 'green', 'magenta', 'red', 'yellow', 'rainbow'],
  \   ['width', 'height'],
  \   ['low', 'high'],
  \   ['rising', 'dropping'],
  \   ['male', 'female'],
  \   ['===', '!=='],
  \   ['test', 'development','staging', 'production'],
  \   ['should', 'should.not'],
  \   ['have', 'not.have'],
  \   ['exist', 'not.exist'],
  \   ['be.exactly', 'eql'],
  \   ['.get', '.post' , '.put', '.del'],
  \   ['if', 'else' , 'else if'],
  \   ['before(', 'beforeEach('],
  \   ['describe(', 'describe.only('],
  \   ['it(', 'it.only(']
  \ ]
