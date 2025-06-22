# ❄️ Norwegian Keyboard Configuration for Neovim

This configuration provides a better experience for Norwegian keyboard users by
remapping common navigation keys to more intuitive positions based on the layout
of a Norwegian keyboard. It ensures a smoother workflow without compromising on functionality.

## ⌨️ Keybindings Overview

- **`ø` → `[`**  
  Single press for navigating backward to the previous match or block.

- **`øø` → `[[`**  
  Double press for jumping to the start of the previous function or block.

- **`æ` → `]`**  
  Single press for navigating forward to the next match or block.

- **`ææ` → `]]`**  
  Double press for jumping to the start of the next function or block.

- **`Ø` → `{`**  
  Move to previous paragraph.

- **`Æ` → `}`**  
  Move to next paragraph.

- **`Ø` → `(`**  
  Move to previous sentence.

- **`Æ` → `)`**  
  Move to next sentence.

- **`<leader>ån` → `set spelllang=nb`**  
  Enable spell check for Norwegian bokmål

- **`<leader>åe` → `set spelllang=en`**  
  Enable spell check for English

## 📦 Installation

Install the plugin with [lazy.nvim](https://github.com/folke/lazy.nvim):

`~/.config/nvim/lua/plugins/no.lua`:

```lua
return {
  {
    "fholmer/no.nvim",
    opts = {},
  },
}
```
