""" Theme:
colorscheme jellybeans

""" Basics:
set nocompatible   " Turns off VI compatibility
syntax enable      " Turns on syntax highilghting features
filetype plugin on " Turns on included file browser

""" General:
set number      " Show line numbers
"set colorcolumn=80 " Highlight the 80 character column as subtle visual indicator
highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100) " Highlights where a line goes over 80 characters

set linebreak      " Break lines at word (requires Wrap lines)
set showbreak=+++  " Wrap-broken line prefix
set textwidth=100  " Line wrap (number of cols)
set showmatch      " Highlight matching brace
set visualbell     " Use visual bell (no beeping)
"set spell          " Enable spell-checking

""" Code Block Indenting
" vnoremap < <gv  " keeps selection after unindenting
" vnoremap > >gv  " keeps selection after unindenting
" Indent/outdent current block...
" nmap %% $>i}``
" nmap $$ $<i}``

""" Searching:
set path+=**    " Enables tab completion for all file-related tasks & subfolder searching
set wildmenu    " Show all matching files when tab completing a search
" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer
set hlsearch    " Highlight all search results
set smartcase   " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch   " Searches for strings incrementally

""" Indenting:
"set autoindent     " Auto-indent new lines
"set cindent        " Use 'C' style program indenting
"set smartindent    " Enable autoindenting of blocks
set softtabstop=4  " Number of spaces per Tab
set tabstop=4      "Tab indentation levels every four columns
set shiftwidth=4   "Indent/outdent by four columns
set expandtab      "Convert all tabs that are typed into spaces
set shiftround     "Always indent/outdent to nearest tabstop
set smarttab       "Use shiftwidths at left margin, tabstops everywhere else

""" Advanced:
"set autochdir                   " Change working directory to open buffer
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Allows BS past autoindents, line boundaries, and insertion start point

""" Keymaps:
" Allows ; to be used in addition to : as ; doesn't do much
nnoremap ; : 

""" TAG JUMPING:
" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

""" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_sort_by='time'
let g:netrw_sort_direction='reverse'
" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

""" Mouse And Scorll Wheel:
map <ScrollWheelUp> 2<C-Y>
map <ScrollWheelDown> 2<C-E>
"set mouse=a        " Enable mouse usage
"set mousehide      " Hide the mouse cursor while typing

""" STATUS LINE:
set laststatus=2
set statusline=
set statusline+=%8*\ [%n]               " buffer number
"set statusline+=\ %*
"set statusline+=%1*\ 
"set statusline+=%1*\ %f\ %*             " Adds filename
"set statusline+=%1*\ 
set statusline+=%3*\ %F                 " Full path and file name
set statusline+=%1*\ %m                 " Display file permission
set statusline+=%*
set statusline+=%9*\ %=                 " Space
set statusline+=%8*\ %y\                " File Type
set statusline+=%0*\ %3p%%\ %l:\ %3c\   " Row number/total (%)

