set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'Javascript-syntax'
Plugin 'Better-Javascript-Indentation'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'homfen/fecompressor.vim'
Plugin 'homfen/vim-json-coders'
Plugin 'hushicai/fecs.vim.git'
Plugin 'hushicai/vim-etpl.git'
Plugin 'lyokha/vim-xkbswitch'
"theme
Plugin 'jacoborus/tender'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-sleuth'
Plugin 'Valloric/YouCompleteMe'
"typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'easymotion/vim-easymotion'
"golang
Plugin 'fatih/vim-go'
"git
Plugin 'zivyangll/git-blame.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" common
syntax enable
syntax on
set ci
set noet
set sw=4
set ts=4
set expandtab
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
set helplang=cn
set autoread
set cursorline
set number
set mouse=v
let &termencoding=&encoding
set fileencodings=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8
set shortmess=a
set cmdheight=2
set backspace=indent,eol,start
set guioptions-=L
set guioptions-=r
set nowrapscan
set ignorecase
set autochdir
set laststatus=2
set term=xterm-256color
set termencoding=utf-8
set foldmethod=indent
set background=dark
set linespace=0
set ff=unix


let mapleader=';'

" map
nnoremap <C-c> :tabc<CR>
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <C-t> :tabnew<CR>
" nnoremap <C-g> :TernDefTab<CR>
nnoremap ag :Ag
cnoreabbrev ack Ack!
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
map cc <leader>cc
map cu <leader>cu
map cs <leader>cs
map ca <leader>ca
map cA <leader>cA
map J jj
map K kk
cnoreabbrev ar AsyncRun
cnoreabbrev rar AsyncRun -cwd=<root>
nnoremap <C-q> :ccl<CR>


" nerdtree
map F :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"不建议首次打开文件时进行检查
let g:syntastic_check_on_open = 0
" `:wq`时不进行检查，注意这跟`:w`不一样
let g:syntastic_check_on_wq = 0
" 如果你想在写文件时不进行检查，需要配置`passive`模式
" 在`passive`模式下，只有手动调用了`:SyntasticCheck`才会触发检查
"let g:syntastic_mode_map = {'mode': 'passive'} 
" 你可以配置一个快捷方式，用来快速检查当前文件
" nmap <silent> <F5> :SyntasticCheck<cr>
let g:syntastic_javascript_checkers = ['fecs']
let g:syntastic_javascript_fecs_args = "--reporter=baidu"
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

"let g:etpl_command_open='<!--'
"let g:etpl_command_close='-->'
"let g:etpl_variable_open='${'
"let g:etpl_variable_close='}'


" ag, ctrlp
let g:ag_working_path_mode="r"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'


" colorscheme
colorscheme smyck"colorsbox-stnight"Stereokai"github"gruvbox"smyck"scheakur"monokai"tender
let g:Powerline_symbols = 'fancy'
" enable tender airline theme
let g:tender_airline = 1
"let g:gruvbox_contrast_dark = 'soft'
" set airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tender'

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = ''
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = ''
"let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" YouCompleteMe
" ctrl + o 跳回
nnoremap go :YcmCompleter GoToDefinition<CR>
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion=1

let g:asyncrun_open=8

" easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f2)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)
" map  <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" vim-xkbswitch 自动切换输入法
let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'
let g:XkbSwitchEnabled = 0
let g:XkbSwitchNLayout = 'com.apple.keylayout.ABC'
let g:XkbSwitchILayout = 'com.baidu.inputmethod.BaiduIM.pinyin'

" git-blame
nnoremap <Leader>l :<C-u>call gitblame#echo()<CR>

" vim-go
let g:go_gocode_propose_source=0
