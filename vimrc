" 显示行号
set number

" 开启代码高亮
syntax on

" 设置 leader 键为空格
let mapleader = " "

" ============================================
" 主题配色 (可选: gruvbox, onedark, dracula, nord)
" ============================================

" 启用真彩色支持
set termguicolors

" 设置主题 (取消注释你想使用的主题)
" colorscheme gruvbox
" colorscheme onedark
" colorscheme dracula
" colorscheme nord

" 如果没有安装主题插件，使用 vim 内置暗色主题
set background=dark

" ============================================
" 文件浏览配置 (netrw - vim 内置)
" ============================================

" 打开文件浏览器
nnoremap <leader>e :Explore<CR>

" 在当前窗口打开目录树
nnoremap <leader>t :Lex<CR>

" 关闭文件树/窗口
nnoremap <leader>q :q<CR>

" netrw 设置
let g:netrw_banner = 0        " 关闭顶部帮助信息
let g:netrw_liststyle = 3     " 树形目录显示
let g:netrw_browse_split = 4  " 在新标签页打开文件
let g:netrw_altv = 1          " 在右侧分割窗口打开
let g:netrw_winsize = 25      " 窗口宽度 25%

" 快速打开当前文件所在目录
nnoremap <leader>d :e %:p:h<CR>

" ============================================
" 窗口切换快捷键
" ============================================

" 使用 Ctrl + 方向键快速切换窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 或者使用 leader 键 + 方向键
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" ============================================
" 快捷保存
" ============================================

" Ctrl+S 保存文件（普通模式和插入模式都可用）
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>
