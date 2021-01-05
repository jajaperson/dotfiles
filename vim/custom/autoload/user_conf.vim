" user_conf.vim
"
" Custom configuration that can't be done in init.toml using bootstrap hook
" functions.
"

function! user_conf#before() abort
  let g:coc_config_home = '~/.SpaceVim.d'
endfunction

function! user_conf#after() abort
  call defx#custom#option('_', {
	  \ 'ignored_files':
	  \     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
	  \   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
	  \ })
endfunction
