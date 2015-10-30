" *****************************************************************
" Buddle management - vundle
" *****************************************************************
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Syntax and language improvements.
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mxw/vim-jsx'
Bundle 'elzr/vim-json'
Bundle 'briancollins/vim-jst'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'

" Color Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'sjl/badwolf'
Bundle 'marcus/vim-mustang'
Bundle 'goatslacker/mango.vim'
Bundle 'endel/vim-github-colorscheme'

" General bundles
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'ciaranm/detectindent'
Bundle 'sjl/gundo.vim'
Bundle 'AndrewRadev/switch.vim'
Bundle 'PeterRincker/vim-argumentative'
Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'embear/vim-localvimrc'
Bundle 'junegunn/vim-easy-align'

" Nice ident guides <leader>ig
Bundle 'nathanaelkane/vim-indent-guides'

" Faster then grep
Bundle 'rking/ag.vim'

" Marks manager
Bundle 'kshenoy/vim-signature'

" Buffer manager
Bundle 'jeetsukumaran/vim-buffergator'

" Cool vim status bars
Bundle 'bling/vim-airline'

" Completion of quotes, brackets
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'

" Text object Bundle
Bundle 'kana/vim-textobj-user'
Bundle 'glts/vim-textobj-comment'
Bundle 'kana/vim-textobj-datetime'
Bundle 'kana/vim-textobj-entire'
Bundle 'kana/vim-textobj-indent'
Bundle 'mattn/vim-textobj-url'

" Snipets
Bundle 'SirVer/ultisnips'

" Node plugin
Bundle 'moll/vim-node'

" Tag Bar
Bundle 'majutsushi/tagbar'

" Toggle Numbers
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

" Commenting system
Bundle 'scrooloose/nerdcommenter'

" Shell for vim
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'

" swift support
Bundle 'Keithbsmiley/swift.vim'

" html stuff
Bundle 'Valloric/MatchTagAlways'

" control + y + ,
Bundle 'mattn/emmet-vim'

" *****************************************************************
" Vim Settings
" *****************************************************************

" Add better UTF-8 support.
scriptencoding utf-8
set encoding=utf-8

set nocompatible                            " be iMproved, required

" Set editor properties
syntax on
set background=dark
colors badwolf
set guioptions=                             " get rid of gui options
set guioptions-=L                           " disable the scrollbars
set guioptions-=r                           " disable the scrollbars
set guioptions-=R                           " disable the scrollbars
set guifont=Menlo:h13                       " increase the font size

" Enable better indentation
set autoindent
set smarttab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
let g:html_indent_inctags='html,body,head,tbody'

" Delimitmate settings
let delimitMate_expand_cr = 1

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

" make sure ejs files are treated as html
" au BufNewFile,BufRead *.ejs set filetype=html

" reset the mapleader to be the comma (,)
let mapleader = ','

" automatically remove whitespace on save
" autocmd BufWritePre * :%s/\s\+$//e

" set the semi colon as the easy motion key
let g:EasyMotion_leader_key = '<Space>'
let g:EasyMotion_smartcase = 1

" Setup nerd tree
set laststatus=2
set ttimeoutlen=50
" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" setup buffergator on the right & show relative
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_show_full_directory_path = 0
let g:buffergator_vsplit_size = 50

" Control P setup
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Gundo Setup
let g:gundo_right = 1
let g:gundo_width = 80

" " Configure syntastic.
let g:syntastic_mode_map={ 'mode': 'activ',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html', 'cpp'] }
" let g:syntastic_check_on_open=1

" Configure YouCompleteMe.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
let g:ycm_show_diagnostics_ui=1

" Tern config
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" Javascrit syntax checking
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']

" Disable syntax checking on open of file
let g:syntastic_check_on_open = 0

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Tagbar settings
let g:tagbar_right = 1
let g:tagbar_width = 80
let g:tagbar_autoclose = 1

" Node.js completion
filetype plugin on

" gg=G will indent document
filetype indent on

" Ulitsnips
set runtimepath+=~/Dropbox
let g:UltiSnipsSnippetsDir = "~/Dropbox/Vim"
let g:UltiSnipsSnippetDirectories = ["Vim"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['jst'] = 'jst,html'

" NumberToggle
let g:NumberToggleTrigger="<F2>"

" Making sure a space is added before the comment
let g:NERDSpaceDelims=1

" *****************************************************************
" Custom key mapping Map
" *****************************************************************
imap jk <Esc>
imap jj <Esc>
" nnoremap <C-J> o<Esc>
" nnoremap <C-K> O<Esc>

" Alt-J move line down / Alt-K move line up
nnoremap ∆ :m .+1<CR>
nnoremap ˚ :m .-2<CR>
inoremap ∆ <Esc>:m .+1<CR>gi
inoremap ˚ <Esc>:m .-2<CR>gi
vnoremap ∆ :m '<+1<CR>gv=gv
vnoremap ˚ :m '>-2<CR>gv=g

" Cancels the search. (c)
nnoremap <silent>c/ :nohlsearch<CR>

" Strips the trailing white space from the file.
nnoremap <leader>w :%s/\s\+$//e<CR>:nohl<CR>

" Easy motion config
nnoremap s <Plug>(easymotion-s2)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <space>j <Plug>(easymotion-j)
map <space>k <Plug>(easymotion-k)

" NERDTree file navigation
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Nerd commenter (gcc for simple comment)
map gcs <plug>NERDCommenterSexy

" Gundo
nnoremap <F4> :GundoToggle<CR>

" Tagbar
nnoremap <F3> :TagbarToggle<CR>

" Back one buffer
nnoremap <c-b> :b#<CR>

" Tern stuff
nnoremap <leader>td :TernDef<CR>
nnoremap <leader>tb :TernDocBrowse<CR>
nnoremap <leader>tR :TernRename<CR>
nnoremap <leader>tr :TernRefs<CR>

" Convert to javascript file to coffee script
map <leader>jc :ConvertToCoffee<CR>
map <leader>cj :CoffeeCompile vertical<CR>

" Delete the current file and its buffer
map <leader>del :call delete(@%)<CR>:bdelete!<CR>

" Switch things around
map sw :Switch<CR>

" End it
map en A;<ESC>

" Yank in function in javascript / copy a whole function
map yif 0y%

" Surround with quotes
nmap ys" ysiw"
nmap ys' ysiw'

" Edit your snippets
map snip :UltiSnipsEdit<CR>

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gap <Plug>(EasyAlign)ii=<CR>
nmap ga <Plug>(EasyAlign)

" Open file in browser
map <leader>h :silent ! open %<CR>

" *****************************************************************
" Reload vim when we make a change to the .vimrc file
" *****************************************************************
augroup reload_vimrc
autocmd!
autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" *****************************************************************
" Handy functions
" *****************************************************************

" Convert the current javascript file to coffeescript
function! ConvertToCoffee()
  let jsFile = bufname("%")
  if jsFile =~ '\.js$'
    execute "silent w"
    let coffeeFile = substitute(bufname("%"), ".js", ".coffee", "")
    let command = "silent !js2coffee " . jsFile . " > " . coffeeFile
    let openfileCommand = "vsplit " . coffeeFile
    execute command
    execute openfileCommand
    execute "1"
  else
    echo "I can only convert javascript files"
  endif
endfunction
:command! ConvertToCoffee :call ConvertToCoffee()

" https://github.com/AndrewRadev/switch.vim
" " Switch definitions for javascript using a Dict
" autocmd FileType Javascript let b:switch_custom_definitions =
"   \ [
"   \   {'have': 'not.have'},
"   \   {'exist': 'not.exist'},
"   \   {'.not': ''},
"   \ ]

" let g:switch_custom_definitions =
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
