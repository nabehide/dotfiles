set tabstop=4
set shiftwidth=4
set hlsearch
set ignorecase
set smartcase
set smartindent
set expandtab

nmap <Esc><Esc> :nohlsearch<CR><Esc>

" python
let $PYTHONPATH="/anaconda3/envs/py2.7/Python/bin"
python sys.path = ["/anaconda3/envs/py2.7/lib/python2.7/site-packages"] + sys.path

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir = expand('~/.cache/rc')
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()

  if dein#check_install()
    call dein#install()
  endif
endif

syntax on
