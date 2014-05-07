" Adam's vimrc File

" Enable Pathogen modules
call pathogen#infect()

" keymappings
map \1 <Esc>:set guifont=-*-tixus-*-*-*-*-*-*-*-*-*-*<CR>
map \2 <Esc>:set guifont=-*-bright-*-*-*-*-*-*-*-*-*-*<CR>
map \3 <Esc>:set guifont=Bitstream\ Vera\ Sans\ Mono\ 9<CR>
map \4 <Esc>:set guifont=bright\ Medium\ 12<CR>
map \5 <Esc>:set guifont=tixus\ Medium\ 12<CR>
map \E <Esc>:w<CR>:e#<CR>
map \e <Esc>:e#<CR>
map \g gqap
map \j gqgv:!par j<CR>
map \k <Esc>:execute "!perl -c %"<CR>
map \i <Esc>:execute "!perl %"<CR>
map \m <Esc>:%s///g<CR>
map \l <Esc>:set list!<CR>:set list?<CR>
map \N <Esc>:next!<CR>
map \n <Esc>:next<CR>
map \o <Esc>:set paste!<CR>:set paste?<CR>
map \P <Esc>:prev!<CR>
map \p <Esc>:prev<CR>
nmap \q :nohlsearch<CR>
"map \s reserved for vimspell
map \T <Esc>:set tabstop=8<CR>:set shiftwidth=8<CR>
map \t <Esc>:set tabstop=4<CR>:set shiftwidth=4<CR>
"map \u <Esc>:hi LineNr term=bold ctermfg=black guifg=grey<CR>:set number!<CR>:set number?<CR>
map \u <Esc>:set number!<CR>:set number?<CR>
map \w <Esc>:set wrap!<CR>:set wrap?<CR>
map \x <Esc>:set expandtab!<CR>:set expandtab?<CR>
map \] <Esc>:execute ToggleComment()<CR>
map <S-CR> O<Esc>
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

" for any plugins that use this, make their keymappings use comma
let mapleader=","

" turn off linewise keys -- normally, the `j' and `k' keys move the cursor down
" one entire line. with line wrapping on, this can cause the cursor to actually
" skip a few lines on the screen because it's moving from line N to line N+1 in
" the file. I want this to act more visually -- I want `down' to mean the next
" line on the screen
map j gj
map k gk

" turn off arrow keys in insert and visual mode (forced finger training!)
map <Left>  <Nop>
map <Right> <Nop>
map <Up>    <Nop>
map <Down>  <Nop>

"map! <Left>  <Nop>
"map! <Right> <Nop>
"map! <Up>    <Nop>
"map! <Down>  <Nop>

" no backup files
"set nobackup
"set nowritebackup

" seperate backup dir
set backupdir=~/.vim_runtime,.,/tmp
set directory=~/.vim_runtime,.,/tmp

" other options, look them up yourself (no offense) or see `Settings Window'
" under the Edit menu of gvim
set winheight=10
set winminheight=5

set winwidth=999
set winminwidth=70

set foldmethod=marker
set commentstring=\ \ #%s
set cursorline " Syntax hilighting on cursor line
set linebreak
set expandtab
set autoindent
set clipboard=unnamed
set copyindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set formatoptions=tcqn1
set backspace=2
set visualbell
set showmatch
set matchtime=2
set scrolloff=15
set sidescrolloff=30
set scroll=4
set infercase
set ruler
set nohlsearch
"set modelines=2 - security concern
"set listchars=eol:$,tab:\|\ ,trail:·
set listchars=tab:\|\ ,trail:·
set list
set incsearch       " incremental search
set ignorecase      " case insensitive search by defaul
set smartcase       " case sensitive search if there is any captial
set hlsearch        " highlight search matches

" hide certain files in the file explorer
let g:explHideFiles='\.class$,\.swp$'

" NERDcommenter
filetype plugin on

" having Ex mode start or showing me the command history
" is a complete pain in the ass if i mistype
map Q <silent>
map q: <silent>
map q <silent>
map K <silent>

" i always, ALWAYS hit ":W" instead of ":w"
command Q q
command W w

" quick timestamp-as-comment command
command DS r!echo -n "\# " ; date

syntax on
set background=dark
let g:solarized_termcolors=16
colorscheme solarized
call togglebg#map("<F5>") " solarized toggle background

" Turn numbers on for some file types
au BufRead,BufNewFile *.scala,*.java,*.c,*.m set number

" Keyboard mapping for cursor keys
" [works for XTerminals - 970818]
map  <ESC>[A <Up>
map  <ESC>[B <Down>
map  <ESC>[C <Right>
map  <ESC>[D <Left>
imap <ESC>[A <Up>
imap <ESC>[B <Down>
imap <ESC>[C <Right>
imap <ESC>[D <Left>
