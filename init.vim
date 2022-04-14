set number
colorscheme solarized
set tabstop=2
set shiftwidth=2
lua << EOF
require'lspconfig'.hls.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.rnix.setup{}
EOF
