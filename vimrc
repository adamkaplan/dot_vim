" Adam's vimrc File
" 
" $Id: vimrc 31 2006-02-28 23:18:13Z adkap $
"

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
map \m <Esc>:%s/
map \l <Esc>:set list!<CR>:set list?<CR>
map \N <Esc>:next!<CR>
map \n <Esc>:next<CR>
map \o <Esc>:set paste!<CR>:set paste?<CR>
map \P <Esc>:prev!<CR>
map \p <Esc>:prev<CR>
"map \s reserved for vimspell
map \T <Esc>:set tabstop=8<CR>:set shiftwidth=8<CR>
map \t <Esc>:set tabstop=4<CR>:set shiftwidth=4<CR>
map \u <Esc>:hi LineNr term=bold ctermfg=black guifg=grey<CR>:set number!<CR>:set number?<CR>

map \w <Esc>:set wrap!<CR>:set wrap?<CR>
map \x <Esc>:set expandtab!<CR>:set expandtab?<CR>
map \] <Esc>:execute ToggleComment()<CR>
map <S-CR> O<Esc>

vmap \q :!perl -MText::Autoformat -e autoformat<CR>

" (ab)breviations in (i)nsert mode
iab uw; use warnings;<CR>use strict;<CR>

" for any plugins that use this, make their keymappings use comma
let mapleader=","

" formats POD past __END__ in perl
let perl_include_pod=1

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
set foldmethod=marker
set commentstring=\ \ #%s
set ignorecase
set linebreak
set expandtab
set autoindent
set copyindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set modelines=5
set listchars=eol:$,tab:\|\ 

" hide certain files in the file explorer
let g:explHideFiles='\.class$,\.swp$'

" having Ex mode start or showing me the command history
" is a complete pain in the ass if i mistype
map Q <silent>
map q: <silent>
map K <silent>
map q <silent>

" i always, ALWAYS hit ":W" instead of ":w"
command Q q
command W w

" quick timestamp-as-comment command 
command DS r!echo -n "\# " ; date

" turn off hilighting for CDATA
hi def link xmlCdata NONE

" no blinking of the cursor in the gui, thanks
if has("gui_running")
    set guicursor+=a:blinkon0
endif

" ccs printing options
set printoptions=paper:letter,syntax:n,duplex:off
set printdevice=rockwell
"set printfont=

" make sure colored syntax mode is on
if has("terminfo")
  set t_Co=8
  set t_Sf=[3%p1%dm
  set t_Sb=[4%p1%dm
else
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif
syntax on
colorscheme default

" Turn numbers on for some file types
au BufRead,BufNewFile *.scala,*.java,*.c,*.m set number

" Change the global default comment colors
" They needs more contrast with white-on-black
hi Comment term=italic ctermfg=cyan guifg=#80a0FF gui=bold

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

" here's my modeline
" vim:set ts=2 sw=2 sts=0 noexpandtab: