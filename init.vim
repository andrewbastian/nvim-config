"set runtimepath^=/Users/andrewbastian/.config/coc/my-extensionz/coc-mdx-lint

function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction


for file in split(glob(Dot("modules/*.vim")), "\n")
  execute "source" file
endfor

if filereadable("~/.nvim.local.vim")
  source ~/.nvim.local.vim
endif
