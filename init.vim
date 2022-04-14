set number
colorscheme solarized
lua << EOF
require'lspconfig'.hls.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.rnix.setup{}
EOF
