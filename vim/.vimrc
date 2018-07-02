set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif
set smartindent
set autoindent
set number
set history=1000

filetype plugin on
filetype indent on

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
"set hlsearch
"noremap <cr> :nohlsearch<cr>

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"set background="dark"

set encoding=utf8

"set cursorline

" :help foldmethod
set foldenable
" 10 nested fold max
set foldlevelstart=10
" space open/closes folds
set foldmethod=syntax
nnoremap <space> za

" Enable mouse usage (all modes) "
"set mouse=a

syntax on
" Open the taglist window when Vim starts
let Tlist_Auto_Open = 1
" Automatically update the taglist to include
" newly edited files
let Tlist_Auto_Update = 1
" Close Vim if the taglist is the only window
let Tlist_Exit_OnlyWindow = 1
" Close tag folds for inactive buffers
let Tlist_File_Fold_Auto_Close = 1
" Tlist show at right
let Tlist_Use_Right_Window = 1
" Process files even when the taglist window is closed
let Tlist_Process_File_Always = 1
"let Tlist_WinWidth = 30
let Tlist_Show_Menu = 1

" normal no recursive map
" nnoremap <C-]> <C-w>g<C-]>
nnoremap <C-]> g<C-]>
"nnoremap <C-t> :q<CR>
