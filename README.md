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
  Shift-modified version for working with braces.

- **`Æ` → `}`**  
  Shift-modified version for closing braces.

- **`¨` → `/`**  
 Double press for easy access to /

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
