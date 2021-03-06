" “When you look at the dark side, careful you must be.
"  For the dark side looks back.” — Yoda

" This must be first, because it changes other options as side effect
set nocompatible " be iMproved
"------------------------------------------------------------------------------
lan C
set shortmess+=I "remove useless splash screen

set encoding=utf-8
set fileformats=unix,dos,mac
set fileencodings=utf-8,cp1251,koi8-r,cp866
set spelllang=en,ru
set   langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯХЪЖЭБЮ;ABCDEFGHIJKLMNOPQRSTUVWXYZ{}:\"<>
set langmap+=,фисвуапршолдьтщзйкыегмцчняхъжэбю;abcdefghijklmnopqrstuvwxyz[];'\\,.
";',.

set autowrite " Autowrite when switching to another file
let loaded_errormaker = 1
let mapleader="," "change the mapleader from \ to ,
" Vundle config {{{
filetype off                  " Vundle required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" Plugin to help you stop repeating the basic movement keys
Plugin 'takac/vim-hardtime'
" UltiSnips - The ultimate snippet solution for Vim.
" Plugin 'SirVer/ultisnips'
" vim-snipmate default snippets (Previously snipmate-snippets)
" Plugin 'honza/vim-snippets'

Plugin 'lifepillar/vim-cheat40'
" Extended session management for Vim (:mksession on steroids)
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
" Bbye allows you to do delete buffers (close files) without closing your
" windows or messing up your layout.
Plugin 'olegtc/vim-bbye'
" Monokai color scheme for Vim converted from Textmate theme
Plugin 'sickill/vim-monokai'
" one stop shop for vim colorschemes.
Plugin 'flazz/vim-colorschemes'
" Cycle easily through vim color schemes using F6/F7
Plugin 'qualiabyte/vim-colorstepper'
" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'ctrlpvim/ctrlp.vim'
" highlight columns in csv/tsv/*sv/xsv files in different colors
Plugin 'mechatroner/rainbow_csv'
" A Vim plugin which makes working with Rails i18n locale files a little
" easier.
Plugin 'airblade/vim-localorie'

" Ruby on Rails power tools
Plugin 'tpope/vim-rails'
" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
" continuously updated session files
Plugin 'tpope/vim-obsession'
" use CTRL-A/CTRL-X to increment dates, times, and more
Plugin 'tpope/vim-speeddating'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdtree'
" Vim sugar for the UNIX shell commands that need it the most.
Plugin 'tpope/vim-eunuch'
" seamless switching between VIM windows and Tmux panes
Plugin 'christoomey/vim-tmux-navigator'
" Arduino support
Plugin '4Evergreen4/vim-hardy'

Plugin 'vimwiki/vimwiki'
" Run your favorite search tool from Vim, with an enhanced results list.
Plugin 'mileszs/ack.vim'
" Asynchronous Lint Engine
Plugin 'w0rp/ale'
" Tame the quickfix window
" Plugin 'romainl/vim-qf'
" Zoom in/out of windows (toggle between one window and multi-window)
Plugin 'vim-scripts/ZoomWin'
" plugin for visually displaying indent levels in Vim.
Plugin 'Yggdroot/indentLine'

Plugin 'jvirtanen/vim-octave'
Plugin 'rkennedy/vim-delphi'
Plugin 'vim-ruby/vim-ruby'
" vim plugin for highliting code in ruby here document
Plugin 'joker1007/vim-ruby-heredoc-syntax'
"  Syntax Highlight for Vue.js components
Plugin 'posva/vim-vue'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'

Plugin 'pangloss/vim-javascript'
" React JSX syntax highlighting and indenting for vim.
Plugin 'mxw/vim-jsx'
" List of JavaScript ES6 snippets and syntax highlighting for vim.
Plugin 'isRuslan/vim-es6'
" Superior Lisp Interaction Mode for Vim ("SLIME for Vim")
Plugin 'kovisoft/slimv'

Plugin 'jceb/vim-orgmode'
" ------------------------------------------------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" }}}
" Colors (also ExtraWhiteSpace and 81's column highlight) {{{
"
syntax on
" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

highlight ColorColumn ctermbg=magenta guibg=magenta
call matchadd('ColorColumn', '\%81v', 100)
" set colorcolumn=81 " highligh 80's column with ColorColumn hl-ColorColumn

let g:gruvbox_termcolors=16
colorscheme gruvbox
set background=dark
"}}}

" Terminal specific options {{{
" check http://vimdoc.sourceforge.net/htmldoc/term.html#terminal-options
" for details
set t_Co=256    " terminal colors
set t_ZH=[3m  " code to switch to italic mode
set t_ZR=[23m " italic mode end
" disable Background Color Erase(BCE) to properly display background color
" inside tmux and GNU screen
set t_ut=
" }}}
" UI {{{
set relativenumber " always show line numbers
set number         " show absolute line number for current line
set textwidth=79   " width of document (used by gd)
set nowrap         " don't wrap lines on load
set linebreak      " wrap only at a character in the breakat option
set formatoptions-=t " don't wrap text when typing
set showmatch      " set show matching parenthesis
set cpoptions+=$   " display $ at end of change motion
set visualbell     " don't beep
set noerrorbells   " don't beep
"}}}
" GUI options {{{

if has("gui_running")
    if has("gui_gtk2") || has("gui_gtk3")
        "set guifont=Source\ Code\ Pro\ for\ Powerline\ 13
        set guifont=Source\ Code\ Pro\ Medium\ 13
    elseif has("gui_photon")
        set guifont=Source\ Code\ Pro\ for\ Powerline:s16
    elseif has("gui_kde")
        set guifont=Source\ Code\ Pro\ for\ Powerline/16/-1/5/50/0/0/0/1/0
        " font family (in this example, 'Source Code Pro for Powerline')
        " point size (default = 18)
        " pixel size (-1 = default)
        " style hint (what to do if requested family can't be found; 5 = AnyStyle = default)
        " weight (50 = normal, 25 = light, 63 = semibold, 75 = bold, 87 = black)
        " italic (0 = no)
        " underline (0 = no)
        " strikeout (0 = no)
        " fixedPitch (1 = yes)
        " raw (0 = no)
    elseif has("x11")
        " use xfontsel to find name of a font
        set guifont=-*-inconsolata-medium-r-normal-*-*-160-*-*-m-*-*
    else
        set guifont=Source\ Code\ Pro\ for\ Powerline:h16:cDefault
    endif
    set title " change the terminal's title
    set go-=T " remove toolbar
    set go-=m " remove menubar
    set go-=r " remove right-hand scroll bar
    set go-=L " remove left-hand scroll bar
endif
"}}}
" Status line {{{
set laststatus=2 "always show statusline
"
" functions {{{
" returns an approximate grey index for the given grey level
fun! s:grey_number(x)
    if &t_Co == 88
        if a:x < 23
            return 0
        elseif a:x < 69
            return 1
        elseif a:x < 103
            return 2
        elseif a:x < 127
            return 3
        elseif a:x < 150
            return 4
        elseif a:x < 173
            return 5
        elseif a:x < 196
            return 6
        elseif a:x < 219
            return 7
        elseif a:x < 243
            return 8
        else
            return 9
        endif
    else
        if a:x < 14
            return 0
        else
            let l:n = (a:x - 8) / 10
            let l:m = (a:x - 8) % 10
            if l:m < 5
                return l:n
            else
                return l:n + 1
            endif
        endif
    endif
endfun

" returns the actual grey level represented by the grey index
fun! s:grey_level(n)
    if &t_Co == 88
        if a:n == 0
            return 0
        elseif a:n == 1
            return 46
        elseif a:n == 2
            return 92
        elseif a:n == 3
            return 115
        elseif a:n == 4
            return 139
        elseif a:n == 5
            return 162
        elseif a:n == 6
            return 185
        elseif a:n == 7
            return 208
        elseif a:n == 8
            return 231
        else
            return 255
        endif
    else
        if a:n == 0
            return 0
        else
            return 8 + (a:n * 10)
        endif
    endif
endfun

" returns the palette index for the given grey index
fun! s:grey_color(n)
    if &t_Co == 88
        if a:n == 0
            return 16
        elseif a:n == 9
            return 79
        else
            return 79 + a:n
        endif
    else
        if a:n == 0
            return 16
        elseif a:n == 25
            return 231
        else
            return 231 + a:n
        endif
    endif
endfun

" returns an approximate color index for the given color level
fun! s:rgb_number(x)
    if &t_Co == 88
        if a:x < 69
            return 0
        elseif a:x < 172
            return 1
        elseif a:x < 230
            return 2
        else
            return 3
        endif
    else
        if a:x < 75
            return 0
        else
            let l:n = (a:x - 55) / 40
            let l:m = (a:x - 55) % 40
            if l:m < 20
                return l:n
            else
                return l:n + 1
            endif
        endif
    endif
endfun

" returns the actual color level for the given color index
fun! s:rgb_level(n)
    if &t_Co == 88
        if a:n == 0
            return 0
        elseif a:n == 1
            return 139
        elseif a:n == 2
            return 205
        else
            return 255
        endif
    else
        if a:n == 0
            return 0
        else
            return 55 + (a:n * 40)
        endif
    endif
endfun

" returns the palette index for the given R/G/B color indices
fun! s:rgb_color(x, y, z)
    if &t_Co == 88
        return 16 + (a:x * 16) + (a:y * 4) + a:z
    else
        return 16 + (a:x * 36) + (a:y * 6) + a:z
    endif
endfun

" returns the palette index to approximate the given R/G/B color levels
fun! s:color(r, g, b)
    " get the closest grey
    let l:gx = s:grey_number(a:r)
    let l:gy = s:grey_number(a:g)
    let l:gz = s:grey_number(a:b)

    " get the closest color
    let l:x = s:rgb_number(a:r)
    let l:y = s:rgb_number(a:g)
    let l:z = s:rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
        " there are two possibilities
        let l:dgr = s:grey_level(l:gx) - a:r
        let l:dgg = s:grey_level(l:gy) - a:g
        let l:dgb = s:grey_level(l:gz) - a:b
        let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
        let l:dr = s:rgb_level(l:gx) - a:r
        let l:dg = s:rgb_level(l:gy) - a:g
        let l:db = s:rgb_level(l:gz) - a:b
        let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
        if l:dgrey < l:drgb
            " use the grey
            return s:grey_color(l:gx)
        else
            " use the color
            return s:rgb_color(l:x, l:y, l:z)
        endif
    else
        " only one possibility
        return s:rgb_color(l:x, l:y, l:z)
    endif
endfun

" returns the palette index to approximate the 'rrggbb' hex string
fun! s:rgb(rgb)
    let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
    let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
    let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0
    return s:color(l:r, l:g, l:b)
endfun

" sets the highlighting for the given group
fun! s:X(group, fg, bg, attr)
    if a:fg != ""
        exec "hi ".a:group." guifg=#".a:fg." ctermfg=".s:rgb(a:fg)
    endif
    if a:bg != ""
        exec "hi ".a:group." guibg=#".a:bg." ctermbg=".s:rgb(a:bg)
    endif
    if a:attr != ""
        if a:attr == 'italic'
            exec "hi ".a:group." gui=".a:attr." cterm=none"
        else
            exec "hi ".a:group." gui=".a:attr." cterm=".a:attr
        endif
    endif
endfun
"" }}}
"
call s:X("User1", "ffffff", "880c0e", "bold")
call s:X("User2", "ffdad8", "880c0e", "")
call s:X("User3", "000000", "F4905C", "")
call s:X("User4", "292b00", "e4e587", "")
call s:X("User5", "112605", "aefe7B", "")
call s:X("User6", "051d00", "7dcc7d", "")
call s:X("User7", "ffffff", "5b7fbb", "")
call s:X("User8", "ffffff", "810085", "")
call s:X("User9", "ffffff", "094afe", "")

function! HighlightSearch()
    if &hls
        return 'H'
    else
        return ''
    endif
endfunction

set statusline=
set statusline+=%{fugitive#statusline()}
set statusline+=%1*\[%n]                             "buffernr
set statusline+=%2*\ %<%F\                           "File+path
set statusline+=%3*\ %y\                             "FileType
set statusline+=%4*\ %{''.(&fenc!=''?&fenc:&enc).''} "Encoding
set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\       "Encoding2
set statusline+=%5*\ %{&ff}\                         "FileFormat (dos/unix..)
" Spellanguage & Highlight on?
set statusline+=%6*\ %{&spelllang}\%{HighlightSearch()}
set statusline+=%7*\ %=\ %l/%L\                      "Rownumber/total (%)
set statusline+=%8*\ %03v\                           "Colnr
set statusline+=%9*\ \ %m%r%w\ %P\ \                 "Modified? Readonly? Top/bot.
"}}}
" Make the current window big, but leave others context {{{
"
set winwidth=125
" " We have to have a winheight bigger than we want to set winminheight. But if
" " we set winheight to be huge before winminheight, the winminheight set will
" " fail.
" set winheight=5
" set winminheight=5
" set winheight=60 "999
" }}}
" Spaces, TABs and Indentation {{{
" Real programmers don't use TABs but spaces
set tabstop=4     " a tab is four spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
" shiftwidth, not tabstop
set expandtab     " insert spaces instead of tabs
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
"}}}
" Search {{{
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
" case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
"}}}
" Custom autocmds {{{
"
":help autocmd-events
augroup vimrcEx
    " Clear all autocmds in the group
    autocmd!
    autocmd FileType text setlocal textwidth=78

    "for ruby, autoindent with two spaces, always expand tabs
    autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et

    " Setting global variables for Ruby
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby compiler ruby
    autocmd FileType html,eruby let g:html_indent_tags = '\|p\|li\|dt\|dd'
    autocmd FileType slim IndentLinesToggle

    autocmd BufRead *.axlsx set filetype=ruby

    autocmd FileType python set sw=4 sts=4 et

    autocmd! BufRead,BufNewFile *.sass setfiletype sass

    autocmd BufRead *.md set ai formatoptions=tcroqn2 comments=n:&gt;
    autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:&gt;
    autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:&gt;
    autocmd BufRead,BufNewFile *.md setlocal spell

    " Don't syntax highlight markdown because it's often wrong
    autocmd! FileType mkd setlocal syn=off

    " Leave the return key alone when in command line windows, since it's used
    " to run commands there.
    autocmd! CmdwinEnter * :unmap <cr>
    autocmd! CmdwinLeave * :call MapCR()

    " Jump to last cursor position unless it's invalid or in an event handler
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe "normal g`\"" |
                \ endif

    " Automatic reloading of .vimrc after changes
    autocmd! BufWritePost .vimrc source $MYVIMRC
    autocmd! BufWritePost _vimrc source $MYVIMRC
    autocmd! BufWritePost vimrc  source $MYVIMRC
augroup END " }}}
" Keymaps {{{
"
" use Tab key for autocompletion {{{
function! InsertTabWrapper()
    let col = col(".") - 1
    if !col || getline(".")[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>
"}}}

map <leader>w :%s/\v\s+$//g<CR>

map <leader>c :w !xclip<CR><CR>
vmap <leader>c :w !xclip<CR><CR>

" Open files in directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" make F1 to act as Esc
noremap <F1> <Esc>
vnoremap <F1> <Esc>
inoremap <F1> <Esc>

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
" Quicksave commnd
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
" Quick quit command, delete current buffer without window closing
noremap <Leader>q :Bdelete<CR>
" Quit all windows
noremap <Leader>Q :qa!<CR>
" bind Ctrl+<movement> keys to move aroud the windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" For local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
"nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

"open .vimrc using \v
map \v :next $MYVIMRC<CR>

" match behaviour of C and D
noremap Y y$
"}}}
" Disable backup and swap files {{{
set nobackup
set nowritebackup
set noswapfile
" }}}

" A.L.E {{{
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" Map movement through errors without wrapping.
nmap <Up> <Plug>(ale_previous)
nmap <Down> <Plug>(ale_next)
" }}}
" Maps to jump to specific CtrlP targets and files {{{
" look in Silver Searcher section for more oprions
let g:ctrlp_match_window = 'bottom,order:ttb'

set wildignore+=*/.git/*,*/tmp/*,*/log/*,*.so,*.swp,*.zip,*.un~ " MacOSX/Linux

function! ShowRoutes()
    " Requires 'scratch' plugin
    :topleft 100 :split __Routes__
    " Make sure Vim doesn't write __Routes__ as a file
    :set buftype=nofile
    " Delete everything
    :normal 1GdG
    " Put routes output in buffer
    :0r! bundle exec rake -s routes
    " Size window to number of lines (1 plus rake output length)
    :exec ":normal " . line("$") . "_ "
    " Move cursor to bottom
    :normal 1GG
    " Delete empty trailing line
    :normal dd
endfunction

map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gR :call ShowRoutes()<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>

map <leader>ga :CtrlP app/assets<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gv :CtrlP app/views<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gh :CtrlP app/helpers<cr>
map <leader>gl :CtrlP config/locales<cr>
map <leader>gi :CtrlP config<cr>
map <leader>gp :CtrlP public<cr>
map <leader>gs :CtrlP public/stylesheets<cr>
map <leader>gf :CtrlP features<cr>
map <leader>gt :CtrlP spec<cr>
map <leader>f  :CtrlPClearCache<cr>\|:CtrlP<cr>
map <leader>F  :CtrlP %%<cr>>
"}}}
" Rails projections {{{
"
let g:rails_projections = {
            \  "spec/factories/*.rb": {
            \    "command": "factory",
            \    "affinity": "collection",
            \    "alternate": "app/models/%i.rb",
            \    "related": "db/schema.rb#%s",
            \    "test": "test/models/%i_test.rb",
            \    "template": "FactoryGirl.define do\n  factory :%i do\n  end\nend",
            \    "keywords": "factory sequence"
            \  }
            \}
"}}}
" RSpec {{{
" RSpec.vim mappings
let g:rspec_command = "! rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"}}}
" slimv {{{
let g:slimv_impl='sbcl'
let g:slimv_swank_cmd='!tmux new-window -d -n REPL-SBCL "sbcl --load  ~/.vim/bundle/slimv/slime/start-swank.lisp"'
let g:lisp_rainbow=1
" }}}
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher {{{
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in ack
    let g:ackprg = 'ag --vimgrep'

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden --ignore .git -g "" %s'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
" }}}
" vim-hardmode {{{
let g:hardtime_default_on = 1
let g:hardtime_timeout = 2000
let g:hardtime_ignore_quickfix = 1
let g:hardtime_maxcount = 3
let g:hardtime_ignore_buffer_patterns = [ "NERD.*", "vimwiki" ]
" }}}
" {{{ vim-session
let g:session_autoload = 'yes'
let g:session_autosave = 'no'
let g:session_autosave_periodic=1
let g:session_directory="./"
" }}}
"{{{ VimWiki
autocmd FileType vimwiki setlocal nowrap spell
let wiki = {}
let wiki.path =  '~/Dropbox/vimwiki'
let wiki.nested_syntaxes = {'ruby': 'ruby', 'sql' : 'sql', 'python': 'python', 'c++': 'cpp', 'json': 'json', 'js': 'javascript', 'yaml': 'yaml', 'sh': 'sh'}
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'},
                    \ {'path': '~/Dropbox/vimwiki/Projects/ArenArt/'}]
let g:vimwiki_dir_link = 'index'
" ''       Disable folding.
" 'expr'   Folding based on expression (folds sections and code blocks).
" 'syntax' Folding based on syntax (folds sections; slower than 'expr').
" 'list'   Folding based on expression (folds list subitems; much slower).
let g:vimwiki_folding = 'list'
"}}}
" vim-rails {{{
nnoremap <C-@> :A<CR>
" }}}
" vim-ruby {{{
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_spellcheck_strings = 1
"}}}
" vim-ruby-heredoc-syntax {{{
let g:ruby_heredoc_syntax_filetypes = {
        \ "sql" : {
        \   "start" : "SQL",
        \},
  \}
" }}}
" indentLine {{{
let g:indentLine_enabled = 0
"let g:indentLine_setColors = 0
let g:indentLine_char = '┊'
" }}}
" vim-localorie {{{
nnoremap <silent> <leader>lt :call localorie#translate()<CR>
nnoremap <silent> <leader>le :call localorie#expand_key()<CR>
" }}}
" ultisnips {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" }}}

set history=1000    " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class

set foldmethod=marker

set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Better copy & paste
set pastetoggle=<F2>  " toggle pasting unmodified text from system clipboard
set clipboard=unnamed " use system clipboard

set omnifunc=syntaxcomplete#Complete

" add tags files generated by guard-ctags-bundler
set tags+=tags;/
set tags+=gems.tags;/

" Auto closing HTML tag
:iabbrev <// </<C-X><C-O>

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add
"
let g:is_bash=1

" prettify JSON
" :%!python -m json.tool
" replace escaped codeponints with unicode chars
" :%s#\\u[0-9a-f]*#\=eval('"'.submatch(0).'"')#g
" or
" :%s#\v\\u([0-9a-f]{4})#\=nr2char(str2nr(submatch(1),16))#g
