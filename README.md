<h1 style ='color: green; background: linear-gradient(to left, #111A1F 10%, #037500 80%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; display: inline-block;'>
Neoim Journy
</h1>

---

This is a modular Neovim configuration.

---
## About the file structure:
>`./init.vim`
>> ThisIsAFile

>`./plugins.vim`
>> ThisIsAFile

>`./coc-settings.json`
>> ThisIsAFile

> `./modules/`
>> ThisIsANotFile

> `./modules/core.vim`
>> ThisIsAFile

> `./modules/mappings.vim`
>> ThisIsAFile

> `./modules/plugins.vim`
>> ThisIsAFile

> `./modules/plugins/`
>> ThisIsNotAFile




### KEY MAP

| Action                   | Key/s & Commands                              | Notes |
| ------------------------ | --------------------------------------------- | ----- |
| `<leader>`               | `<space>`                                     |       |
| `kj`                     | `<esc>`                                       |       |
| `<leader>P`              | :Format                                       |       |
| `nnoremap <leader>ghw`   | :h <C-R>=expand("<cword>")<CR><CR>            |       |
| `nnoremap <leader>bs`    | /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR> |       |
| `nnoremap <leader>u`     | :UndotreeShow<CR>                             |       |
| `nnoremap <leader>pv`    | :Ex<CR>                                       |       |
| `nnoremap <Leader><CR> ` | :so ~/.config/nvim/init.vim<CR>               |       |
| `nnoremap <Leader>+`     | :vertical resize +5<CR>                       |       |
| `nnoremap <Leader>-`     | :vertical resize -5<CR>                       |       |
| `nnoremap <Leader>rp`    | :resize 100<CR>                               |       |
| `nnoremap <Leader>ee`    | **REMOVE**                                    |       |
| `nnoremap <Leader>cpu`   | **REMOVE**                                    |       |
| `vnoremap J`             | :m '>+1<CR>gv=gv                              |       |
| `vnoremap K`             | :m '<-2<CR>gv=gv **CONFLICT**                 |       |
| `vnoremap <leader>p`     | "\_dP                                         |       |
| `nnoremap <leader>y`     | "+y                                           |       |
| `vnoremap <leader>y`     | "+y                                           |       |
| `nnoremap <leader>Y`     | gg"+yG                                        |       |
| `nnoremap <leader>d`     | "\_d                                          |       |
| `vnoremap <leader>d`     | "\_d                                          |       |

### Plugins and Extensions

| Plugin                                                                                 | Notes | Keys & Commands |
| -------------------------------------------------------------------------------------- | ----- | --------------- |
| [ ulwlu/elly.vim ](https://github.com/ulwlu/elly.vim#readme)                           |       |                 |
| [ neoclide/coc.nvim ](https://github.com/neoclide/coc.nvim#readme)                     |       |                 |
| [ mbbill/undotree ](https://github.com/mbbill/undotree#readme)                         |       |                 |
| [ alvan/vim-closetag ](https://github.com/alvan/vim-closetag#readme)                   |       |                 |
| [ jiangmiao/auto-pairs ](https://github.com/jiangmiao/auto-pairs#readme)               |       |                 |
| [ tpope/vim-surround ](https://github.com/tpope/vim-surround#readme)                   |       |                 |
| [ yuezk/vim-js ](https://github.com/yuezk/vim-js#readme)                               |       |                 |
| [ maxmellon/vim-jsx-pretty ](https://github.com/MaxMEllon/vim-jsx-pretty#readme)       |       |                 |
| [ leafgarland/typescript-vim ](https://github.com/leafgarland/typescript-vim#readme)   |       |                 |
| [ itchyny/lightline.vim ](https://github.com/itchyny/lightline.vim#readme)             |       |                 |
| [ SirVer/ultisnips ](https://github.com/SirVer/ultisnips#readme)                       |       |                 |
| [ honza/vim-snippets ](https://github.com/honza/vim-snippets#readme)                   |       |                 |
| [ mlaursen/vim-react-snippets ](https://github.com/mlaursen/vim-react-snippets#readme) |       |                 |
| [ jremmen/vim-ripgrep ](https://github.com/jremmen/vim-ripgrep#readme)                 |       |                 |
| [ junegunn/fzf ](https://github.com/junegunn/fzf/blob/master/README-VIM.md)            |       |                 |
| [ junegunn/fzf.vim ](https://github.com/junegunn/fzf.vim#readme)                       |       |                 |
| [ tpope/vim-repeat ](https://github.com/tpope/vim-repeat)                              |       |                 |
| [ subnut/nvim-ghost.nvim ](https://github.com/subnut/nvim-ghost.nvim#readme)           |       |                 |
| [ preservim/nerdcommenter ](https://github.com/preservim/nerdcommenter#readme)         |       |                 |
| [ tpope/vim-fugitive ](https://github.com/tpope/vim-fugitivev#readme)                  |       |                 |
| [ mattn/emmet-vim ](https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL) |       |                 |
| [ vim-utils/vim-man ](https://github.com/vim-utils/vim-man)                            |       |                 |
| [ liuchengxu/vim-which-key ]()                                                         |       |                 |

| EXTENTION                       | a   | b   |
| ------------------------------- | --- | --- |
| [ webview ]()                   | Y   | N   |
| [ snippets ]()                  | Y   | N   |
| [ prettier ]()                  | Y   | N   |
| [ html ]()                      | Y   | N   |
| [ git ]()                       | Y   | N   |
| [ explorer ]()                  | Y   | N   |
| [ tsserver ]()                  | Y   | N   |
| [ react-refactor ]()            | Y   | N   |
| [ markdownlint ]()              | Y   | N   |
| [ markdown-preview-enhanced ]() | Y   | N   |
| [ css ]()                       | Y   | N   |
| [ ltex ]()                      | Y   | N   |
| [ json ]()                      | Y   | N   |
