"Tabs >> Spaces by far
set tabstop=2
set shiftwidth=2

" Make Vim look good
set number
set rnu
set signcolumn=number
colorscheme solarized
highlight LineNr ctermbg=8 
set fillchars+=vert:│
highlight VertSplit ctermbg=8
" Nerdtree
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" LSP config
lua << EOF
require'lspconfig'.hls.setup{}
require'lspconfig'.rnix.setup{}
require'lspconfig'.ccls.setup{}
EOF
