let mapleader=" "
execute pathogen#infect()
Helptags


" " AIRLINE (using lightline instead)
" let g:airline#extensions#tabline#enabled = 1

" LIGHTLINE
set noshowmode
let g:lightline = { 'colorscheme': 'solarized', }

" 256 color
set t_Co=256
"Solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"cursorlines and other colors
highlight Search ctermfg=black ctermbg=125 cterm=NONE
highlight CursorLine   cterm=NONE ctermbg=black
highlight CursorColumn cterm=NONE ctermbg=black
highlight Visual ctermbg=white ctermfg=black
nnoremap <Leader><Leader>l :set cursorline! cursorcolumn!<CR>

" EasyMotion
map <Leader> <Plug>(easymotion-prefix)
map  <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>a <Plug>(easymotion-jumptoanywhere)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" Move (option+hjkl in order)
let g:move_map_keys = 0
vmap ˙ <Plug>MoveBlockLeft
vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp
vmap ¬ <Plug>MoveBlockRight

nmap ˙ <Plug>MoveCharLeft
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp
nmap ¬ <Plug>MoveCharRight

" " SYNTASTIC-CHECKERS
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" map <Leader><Leader>e :Errors<CR>
" map <Leader><Leader>E :lclose<CR>
" map <F3> :Errors<CR>
" map <F4> :lclose<CR>
" map <F9> :SyntasticReset<CR>
" let g:syntastic_quiet_messages = {"regex" : 'mixed-indentation'}
" let g:syntastic_check_on_open = 0

" NERDTREE
map <F2> :NERDTreeToggle<CR>
map <Leader><Leader>n :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" " Tagbar
" nmap <F8> :TagbarToggle<CR>
" nmap <Leader><Leader>t :TagbarToggle<CR>

" Commentary
map <Leader>c <Plug>Commentary
nmap <Leader>cc <Plug>CommentaryLine
nmap c<Leader>c <Plug>ChangeCommentary
nmap <Leader>cu <plug>Commentary<Plug>Commentary

" "Tabletop Simulator
" map <Leader>tl :call GetTTSCode()
" map <Leader>tw :call PushTTSCode()
" map <Leader>tc :call ClearTTSCache()

" cscope
function! Csc()
	cscope find c <cword>
endfunction
command! Csc call Csc()
map <Leader><Leader>c :Csc<CR>

function! Csg()
	cscope find g <cword>
endfunction
command! Csg call Csg()
map <Leader><Leader>g :Csg<CR>

" buffers
map <silent> <C-w><C-h> :bp<CR>
map <silent> <C-w><C-l> :bn<CR>
map <C-w><C-j> :buffers<CR>:buffer<Space>
map <F7> :buffers<CR>:buffer<Space>
map <Leader><Leader>d :Bdelete<CR>
set hidden

" bufferline
let g:bufferline_show_bufnr=0
let g:bufferline_solo_highlight=1
let g:bufferline_rotate = 1

" choosewin
nmap <C-w>w <Plug>(choosewin)
nmap <C-w><C-w> <Plug>(choosewin)
nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable=1
let g:choosewin_overlay_shade=1
let g:choosewin_statusline_replace=0 " don't replace statusline
let g:choosewin_tabline_replace=0 " don't replace tabline
let g:choosewin_overlay_font_size="small"
highlight ChooseWinOverlayCurrent ctermfg=45 ctermbg=45
highlight ChooseWinOverlay ctermfg=26 ctermbg=26

" " Signature (deleted)
" highlight SignColumn ctermbg=none
" highlight SignatureMarkText ctermbg=none

" Better Whitespace
highlight ExtraWhitespace ctermbg=green
map <Leader><Leader>h :ToggleWhitespace<CR>
map <Leader><Leader>H :StripWhitespace<CR>
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=0
let g:better_whitespace_operator='_h'
let g:better_whitespace_skip_empty_lines=1
nnoremap ]h :NextTrailingWhitespace<CR>
nnoremap [h :PrevTrailingWhitespace<CR>

" SQLWorkbench
let g:sw_config_dir = "/Users/tmurdock/.sqlworkbench/"
let g:sw_plugin_path = "/Users/tmurdock/.vim/bundle/vim-sql-workbench/"
let g:sw_cache = "/Users/tmurdock/.cache/sw/"
let g:sw_exe = "/Users/tmurdock/Downloads/Workbench/sqlwbconsole.sh"
let g:sw_tmp = "/tmp/"
let g:sw_sql_name_result_tab = 0
let g:sw_switch_to_results_tab = 0
let g:sw_highlight_resultsets = 0
if !exists("g:ctrlp_extensions")
  let g:ctrlp_extensions=[]
endif
call add(g:ctrlp_extensions, "sw_profiles")
vmap <C-S>x :<BS><BS><BS><BS><BS>SWSqlExecuteSelected<CR>
nmap <C-S>x V:<BS><BS><BS><BS><BS>SWSqlExecuteSelected<CR>
map <C-S>c :CtrlPSW<CR>
map <C-S>d :SWSqlBufferDisconnect<CR>
map <C-S>s :SWSqlShowColumn 
map <C-S>h :SWSqlHideColumn 
map <C-S>o :SWSqlShowOnlyColumns 
map <C-S>a :SWSqlShowAllColumns<CR>
map <C-S>f :SWSqlFilter 
map <C-S>u :SWSqlUnFilter<CR>
map <C-S>e :SWDbExplorer 
"Same as above but if you forget to let go of ctrl
vmap <C-S><C-x> :<BS><BS><BS><BS><BS>SWSqlExecuteSelected<CR>
nmap <C-S><C-x> V:<BS><BS><BS><BS><BS>SWSqlExecuteSelected<CR>
map <C-S><C-c> :CtrlPSW<CR>
map <C-S><C-d> :SWSqlBufferDisconnect<CR>
map <C-S><C-s> :SWSqlShowColumn 
map <C-S><C-h> :SWSqlHideColumn 
map <C-S><C-o> :SWSqlShowOnlyColumns 
map <C-S><C-a> :SWSqlShowAllColumns<CR>
map <C-S><C-f> :SWSqlFilter 
map <C-S><C-u> :SWSqlUnFilter<CR>
map <C-S><C-e> :SWDbExplorer 

" " Vim Workspace (not installed)
" map <Leader><Leader>~ :ToggleWorkspace<CR>
" let g:workspace_session_disable_on_args = 1

" " Faster Windows (unused)
" nnoremap <Leader><Leader>h <C-w>h
" nnoremap <Leader><Leader>j <C-w>j
" map <Leader><Leader>k <C-w>k
" map <Leader><Leader>l <C-w>l
" map <Leader><Leader>H <C-w>H
" map <Leader><Leader>J <C-w>J
" map <Leader><Leader>K <C-w>K
" map <Leader><Leader>L <C-w>L

" Faster Commands/QOL
map <Leader><Leader>s :split<CR>
map <Leader><Leader>S :vsplit<CR>
nmap <Leader><Leader>/ :%s//
vmap <Leader><Leader>/ :s//
map <Leader><Leader>v :e ~/.vimrc<CR>
map <Leader><Leader>V :source ~/.vimrc<CR>
map <Leader><Leader>w :se invwrap<CR>
map <C-h> 50h
map <C-k> 10kzz
map <C-j> 10jzz
map <C-l> 50l
map K kJ
map Y y$
map gh 0
map gl $
map <Leader><Leader>t :terminal<CR>
map <Leader><Leader>T :split<CR>:terminal<CR>
tmap <Esc> <C-N><C-\>
"reloads
map <Leader><Leader>r :edit<CR>
"temp unset highlighting on searches
nnoremap <silent> <Esc> :nohlsearch<CR>
"easy insert movement
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"terminal behaviour
inoremap <C-b> <BS>
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
inoremap <C-w> <Esc>bdea

" Settings I like
set winfixwidth
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set nowrap
set autoindent
set smartindent
set foldmethod=marker
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set scrolloff=10
set sidescroll=0
set ignorecase
set smartcase
