<h1 style ='color: green; background: linear-gradient(to left, #111A1F 10%, #037500 80%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; display: inline-block;'>
Neoim Journy
</h1>

---

This is a modular Neovim configuration.

---

## Quick Start

1. [Install Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Clone this repo into `~/.config`
3. Move the files in this directory to `nvim` — `mv ~/.config/nvim-config/* ~/.config/nvim/`
4. [Install _Vim-Plugged_](https://github.com/junegunn/vim-plug#neovim)
5. Open Neovim - `nvim`
6. Run `:so ~/.config/nvim/init.vim`
7. Run `:PlugInstall`
8. Run `:CocInstall `

## About the file structure:

<details> 
  <summary> <code>./init.vim</code> </summary>
<p>
ThisIsAFile
</p>

</details>

<details> 
  <summary> <code>./plugins.vim</code> </summary>

</details>

<details>
  <summary> <code>./coc-settings.json</code> </summary>

</details>

<details >
  <summary> <code>./modules/</code> </summary>

</details>

<details>
  <summary> <code>./modules/core.vim</code> </summary>

</details>

<details>
  <summary> <code>./modules/mappings.vim</code> </summary>

</details>


<details>
  <summary> <code>./modules/plugins.vim</code> </summary>

</details>

<details>
  <summary> <code>./modules/plugins/</code> </summary>

</details>

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
| `vnoremap J`             | :m '>+1<CR>gv=gv                              |       |
| `vnoremap K`             | :m '<-2<CR>gv=gv **CONFLICT**                 |       |
| `vnoremap <leader>p`     | "\_dP                                         |       |
| `nnoremap <leader>y`     | "+y                                           |       |
| `vnoremap <leader>y`     | "+y                                           |       |
| `nnoremap <leader>Y`     | gg"+yG                                        |       |
| `nnoremap <leader>d`     | "\_d                                          |       |
| `vnoremap <leader>d`     | "\_d                                          |       |

## Plugins and Extensions

| Plugin                                                                                 | Notes                                                   | Keys & Commands                                                                                         |
| -------------------------------------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| [ulwlu/elly.vim](https://github.com/ulwlu/elly.vim#readme)                           |                                                         |                                                                                                         |
| [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim#readme)                     |                                                         | `<C-f>` & `<C-b>` - _popup scroll_                                                                      |
| [mbbill/undotree](https://github.com/mbbill/undotree#readme)                         |                                                         | `nnoremap <leader>u` = `:UndotreeShow`                                                                  |
| [alvan/vim-closetag](https://github.com/alvan/vim-closetag#readme)                   |                                                         |                                                                                                         |
| [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs#readme)               | **KeymapsBroken** can't use `Opt` on imap               |                                                                                                         |
| [tpope/vim-surround](https://github.com/tpope/vim-surround#readme)                   | **Ex:** `cs{"`, `ds(`, `ys2_[`                          | `cs[from][to]`, `ds[marker]`, `ys[movment][marker]`                                                     |
| [yuezk/vim-js](https://github.com/yuezk/vim-js#readme)                               |                                                         |                                                                                                         |
| [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                              | Makes `.` command work with _Surround_                  |                                                                                                         |
| [maxmellon/vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty#readme)       |                                                         |                                                                                                         |
| [leafgarland/typescript-vim](https://github.com/leafgarland/typescript-vim#readme)   |                                                         |                                                                                                         |
| [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim#readme)             |                                                         |                                                                                                         |
| [SirVer/ultisnips](https://github.com/SirVer/ultisnips#readme)                       |                                                         |                                                                                                         |
| [honza/vim-snippets](https://github.com/honza/vim-snippets#readme)                   |                                                         |                                                                                                         |
| [mlaursen/vim-react-snippets](https://github.com/mlaursen/vim-react-snippets#readme) |                                                         | `rce` - _Class Component Export_ `fce` - _Function Component Export_ `/**` - _jsdoc comment_            |
| [jremmen/vim-ripgrep](https://github.com/jremmen/vim-ripgrep#readme)                 | `Root` defults to `current file's git-root`             | `:rg <string                                                                                            |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf/blob/master/README-VIM.md)          |`:FZF!` will start in fullscreen **Use `<esc>`to exit** |`:FZF` - _Look for files under current directory_ `:FZF ~` - _Look for files under your home directory_ |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim#readme)                       |                                                         |                                                                                                         |
| [subnut/nvim-ghost.nvim](https://github.com/subnut/nvim-ghost.nvim#readme)           |                                                         |                                                                                                         |
| [preservim/nerdcommenter](https://github.com/preservim/nerdcommenter#readme)         |                                                         |                                                                                                         |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitivev#readme)                  |                                                         |                                                                                                         |
| [mattn/emmet-vim](https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL) |                                                         |                                                                                                         |
| [vim-utils/vim-man](https://github.com/vim-utils/vim-man)                            |                                                         |                                                                                                         |
| [liuchengxu/vim-which-key]()                                                         |                                                         |                                                                                                         |

| EXTENTION                                             | Notes              | Keys & Commands |
| ----------------------------------------------------- | ------------------ | --------------- |
| [webview](https://github.com/weirongxu/coc-webview) | Used by MD-preview | N               |
| [snippets]()                                        | Y                  | N               |
| [prettier]()                                        | Y                  | N               |
| [html]()                                            | Y                  | N               |
| [git]()                                             | Y                  | N               |
| [explorer]()                                        | Y                  | N               |
| [tsserver]()                                        | Y                  | N               |
| [react-refactor]()                                  | Y                  | N               |
| [markdownlint]()                                    | Y                  | N               |
| [markdown-preview-enhanced]()                       | Y                  | N               |
| [css]()                                             | Y                  | N               |
| [ltex]()                                            | Y                  | N               |
| [json]()                                            | Y                  | N               |

## Useful things I've learned along the way:

| What                                 | Keys & Commands                        | Helpful links                                                |
| ------------------------------------ | -------------------------------------- | ------------------------------------------------------------ |
| Change Splits                        | `<C-w-w>`                              | [About Windows](https://mkaz.blog/working-with-vim/windows/) |
| Next Buffer                          | `:bn` or `<leader>n`                   | [About Buffers](https://mkaz.blog/working-with-vim/buffers/) |
| Previous Buffers                     | `:b#` or `<leader>3`                   | [About Buffers](https://mkaz.blog/working-with-vim/buffers/) |
| List Buffers                         | `:ls` or `<leader>,`                   | [About Buffers](https://mkaz.blog/working-with-vim/buffers/) |
| Close Buffer                         | `:bd!` or `Q`                          | [About Buffers](https://mkaz.blog/working-with-vim/buffers/) |
| Jump to previous location            | `<C-o>`                                |                                                              |
| Jump to forward location             | `<C-i>`                                |                                                              |
| List commands that start with `char` | _in command mode_ `:[char/s]<C-d>`     |                                                              |
| Enter a shell command in buffer      | _in command mode_ `:! [shell command]` |                                                              |

## Learn more about:

- Registers

  - [Try this plugin](https://github.com/gennaro-tedesco/nvim-peekup)

    - [Reddit post where I found plugin](https://www.reddit.com/r/neovim/comments/lh3aqm/vim_registers_made_fun_and_easy/)

- Macros/Recording

  - [Blog Post](https://mkaz.blog/working-with-vim/recording/)

- Markers

  - [Blog Post](https://mkaz.blog/working-with-vim/nav-marks/)

- Logs
