lua require('plugins')

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='ayu_mirage'
let g:livepreview_previewer='zathura'
set clipboard=unnamedplus
autocmd VimEnter * CHADopen

lua << EOF
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}
EOF
