" Useful commands:
" - :help :E - The :E command brings up a directory explorer for the current
"              file. Try :Se to do a split + explore.
" - :terminal command provides a terminal session in a split window.

" Display end-of-line (newline), tabs, trailing spaces, and non-breaking spaces
" explicitly when using 'set list'.
set listchars=eol:¬,tab:▸▸,trail:×,nbsp:⎵
" set list
" Display mode indicators (i.e., insert, replace, visual, etc)
set showmode

" Show command being typed
set showcmd

" Show the cursor position
set ruler

" Enable line numbering
set number

"Draw a colored vertical line at the 80th column.
set colorcolumn=80

"Highlight text in read when it's at 80 character or more
match ErrorMsg '\%>79v.\+'

" Width of a tab in spaces. 8 is the default and recommended for historical
" reasons. See also :help tabstop for other information, such as expandtab and
" softtabstop
set tabstop=4

" Default number of spaces when shifting right (with >>) or left (with <<).
" Value 0 makes it equal to tabstop value.
set shiftwidth=0

" Recognize wildcard characters when pattern matching.
set magic

" Highlights search results when searching. Turn off the current search with
" :noh (different than :set nohlesearch).
set hlsearch

" When you do a search, editor moves the cursor through the file, matching text
" as you type
set incsearch

" Automatically write buffer when moving to a different buffer or when running
" a shell command with !
set autowrite

" Hide the current buffer when editing a new file (verify with :ls).
" When switching away from a buffer, it is not unloaded; it remains hidden but
" loaded in memory. This way, we do no have to force with a '!' when switching
" away from a buffer without first saving.
set hidden

" Typing a closing bracket, i.e. ), }, or ], while in insert mode cursor moves
" briefly back to matching (, {, [ before returning to the current position.
" If match does not exist, terminal beeps. If off-screen, silently keeps going.
" Tip: press % in command mode to navigate to a matching brace
set showmatch

" When Vim creates more than one window, its default behavior is to create a
" status line for each window. The default is controlled by laststatus=1. To
" also display a status line for a single window, use laststatus=2.
" See also 'help statusline'.
set laststatus=2

" Display a file's syntax highlighting.
syntax enable

" Indent according to the specific file type (i.e. Python, C, etc).
filetype indent on

" Set theme
colorscheme slate
set background=dark

" Autocommands are executed based on events. See :help autocmd. When pressing
" SHIFT-K, pull up pydoc3 documentation for the word under the cursor.
autocmd FileType python setlocal tabstop=4
                                 \ shiftwidth=0
                                 \ expandtab
                                 \ keywordprg=pydoc3
autocmd FileType make setlocal noexpandtab
" TODO: Set for HTML and C

" When using autocompletion, display a menu of the suggested commands (try
" colorscheme <TAB>)
set wildmenu

" Turn on line wrapping instead of allow scrolling off the screen
set wrap

" When 'wrap' is on, do not break when wrapping mid-word.
set linebreak

" Always split windows equally in both directions (vertical and horizontal)
set equalalways
set eadirection=both

" Sets the Vim's command-line window height
set cmdwinheight=10

" Enable spellchecking
" setlocal spell
setlocal spelllang=en_us
set spellsuggest=fast

" Enable creating folds. When manual, 'foldenable' is the default.
set foldenable
set foldmethod=manual

" When creating a fold, display visual cues in the left margin about the folds.
" set foldcolumn=5

" Make following keys into no-ops to encourage learning vi commands.
map <Home> <Nop>
map <End> <Nop>
map <Insert> <Nop>
map <Delete> <Nop>
map <PageUp> <Nop>
map <PageDown> <Nop>
map <up> <Nop>
map <down> <Nop>
map <left> <Nop>
map <right> <Nop>

" During Insert Mode, use <Tab> for displaying previous entry in an
" autocompletion menu. To insert a proper tab, we could use <CTRL-V> <Tab>,
" since <CTRL-V> (displayed as ^ in insert mode) escapes special keys.
imap <Tab> <C-P>

" Delete trailing whitespace in every line of a file.
nnoremap <silent> <S-F9> :%s/\s\+$//<CR>
