set number
syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set clipboard=unnamed

set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

autocmd BufWritePre * %s/\s\+$//e
