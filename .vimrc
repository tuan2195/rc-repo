" tuan2195's vimrc
filetype plugin on

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
set omnifunc=syntaxcomplete#Complete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,longest,menu,preview

" Mapping to emulate typical autocomplete
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
let g:SuperTabDefaultCompletionType = "<c-n>"

" Tuan's custom mapping
syntax on
set backspace=indent,eol,start " sane backspace
set foldmethod=syntax " fold
set foldlevelstart=0xFF " fold everything
set whichwrap+=<,>,[,] " wrap with hjkl
set expandtab " tab with spaces
set tabstop=4 " 1 tab = 4 cols
set shiftwidth=4 " for < >
set splitbelow " split vertical is crap
set nonu " use ZN to toggle
set hlsearch " highlight search result
set ignorecase " case insensitive search
set smartcase " auto case sensitivity
set incsearch " start search ASAP
set autochdir " auto cd to current file
set clipboard^=unnamedplus,unnamed " X11 Clipboard
set cursorline " cursor line highlighting
hi CursorLine cterm=NONE ctermbg=235
hi CursorColumn cterm=NONE ctermbg=235
" Centralized directories
set dir=~/.vim/.swap//
set undofile
set undodir=~/.vim/.undo//
set backup
set backupdir=~/.vim/.backup//
autocmd BufWritePre * %s/\s\+$//e " kill trailing whitespaces
let mapleader = "," " Originally \\
" Tab navigations
nnoremap <C-t> :tabe ./
nnoremap H gT
nnoremap L gt
" Toggle fold
nnoremap <Space> za
" Toggle comments with C-/
nmap <C-_> <Leader>c<space>
vmap <C-_> <Leader>c<space>
" Exit shortcuts
nnoremap XX :q!<CR>
nnoremap ZA :wa<CR>
nnoremap XA :qa!<CR>
nnoremap ZXA :wqa<CR>
nnoremap ZN :set nu!<CR>
nnoremap ZH :nohl<CR>
" Split shortcuts
nnoremap <C-\> :sp<CR>
nnoremap \\ <C-w><C-w>
" Macro replay
nnoremap <Tab> @
" More navigations
nnoremap Y y$
nmap ; :
vmap ; :
" NERDTree
nnoremap ZT :NERDTreeToggle<CR>

" ==========VUNDLE==========
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'easymotion/vim-easymotion'
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==========EASYMOTION==========
let g:EasyMotion_keys = 'asdfghjklqwertyuiopzxcvbnm1234567890;'
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-bd-jk)

" ==========AIRLINE==========
set showcmd
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_theme='badwolf' " Theme defined below

" Airline theme 'badwolf'
let s:N1 = [ '#141413' , '#aeee00' , 232 , 154 ] " blackestgravel & lime
let s:N2 = [ '#f4cf86' , '#45413b' , 222 , 238 ] " dirtyblonde    & deepgravel
let s:N3 = [ '#8cffba' , '#242321' , 121 , 235 ] " saltwatertaffy & darkgravel
let s:N4 = [ '#666462' , 241 ]                   " mediumgravel

let s:I1 = [ '#141413' , '#0a9dff' , 232 , 39  ] " blackestgravel & tardis
let s:I2 = [ '#f4cf86' , '#005fff' , 222 , 27  ] " dirtyblonde    & facebook
let s:I3 = [ '#0a9dff' , '#242321' , 39  , 235 ] " tardis         & darkgravel

let s:V1 = [ '#141413' , '#ffa724' , 232 , 214 ] " blackestgravel & orange
let s:V2 = [ '#000000' , '#fade3e' , 16  , 221 ] " coal           & dalespale
let s:V3 = [ '#000000' , '#b88853' , 16  , 137 ] " coal           & toffee
let s:V4 = [ '#c7915b' , 173 ]                   " coffee

let s:PA = [ '#f4cf86' , 222 ]                   " dirtyblonde
let s:RE = [ '#ff9eb8' , 211 ]                   " dress

let s:IA = [ s:N3[1] , s:N2[1] , s:N3[3] , s:N2[3] , '' ]

let g:airline#themes#badwolf#palette = {}

let g:airline#themes#badwolf#palette.accents = {
      \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]
      \ }

let g:airline#themes#badwolf#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#badwolf#palette.normal_modified = {
      \ 'airline_b': [ s:N2[0]   , s:N4[0]   , s:N2[2]   , s:N4[1]   , ''     ] ,
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }


let g:airline#themes#badwolf#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#badwolf#palette.insert_modified = {
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#badwolf#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }


let g:airline#themes#badwolf#palette.replace = copy(airline#themes#badwolf#palette.insert)
let g:airline#themes#badwolf#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#badwolf#palette.replace_modified = g:airline#themes#badwolf#palette.insert_modified


let g:airline#themes#badwolf#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#badwolf#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }


let g:airline#themes#badwolf#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#badwolf#palette.inactive_modified = {
      \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }

