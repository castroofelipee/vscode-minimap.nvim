# vscode-minimap.nvim

A VS Code–style minimap for Neovim, as a ready-made [lazy.nvim](https://github.com/folke/lazy.nvim) setup on top of [neominimap.nvim](https://github.com/Isrothy/neominimap.nvim).

- Shows the code with syntax colors, plus git changes, diagnostics and search matches
- Opens only when you open a real file, so it stays out of the way with `nvim .` and dashboards
- Uses a normal split, so you can resize it like a sidebar (drag the border, or `Ctrl-w <` / `Ctrl-w >`)
- Maximum detail: each dot stands for one column and one line of code

> A terminal can't draw text smaller than one character, so the "tiny code" is drawn with braille dots. That's as close to VS Code as a terminal gets.

## Install

```lua
-- e.g. ~/.config/nvim/lua/plugins/minimap.lua
return {
  { "castroofelipee/vscode-minimap.nvim", import = "vscode-minimap.plugins" },
}
```

Requires Neovim 0.10+ and lazy.nvim.

## Usage

| Key          | Action          |
| ------------ | --------------- |
| `<leader>um` | Toggle minimap  |

## Options

Set `vim.g.vscode_minimap` before lazy.nvim loads (e.g. in `init.lua`). Any [neominimap option](https://github.com/Isrothy/neominimap.nvim#configuration) is accepted and overrides the defaults:

```lua
vim.g.vscode_minimap = {
  split = { minimap_width = 30 },
  x_multiplier = 2, -- less detail, but shows longer lines
}
```

Defaults:

```lua
{
  auto_enable = false, -- turned on by the first file you open
  x_multiplier = 1,
  y_multiplier = 1,
  layout = "split",
  split = { minimap_width = 20 },
}
```

## Credits

All the rendering is done by [neominimap.nvim](https://github.com/Isrothy/neominimap.nvim) by Isrothy. This repo only bundles a VS Code–like configuration.

## License

MIT
