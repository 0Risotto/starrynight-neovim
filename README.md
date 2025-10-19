# Neovim theme
Simple light weight theme based on Starry Night
<img width="1908" height="1028" alt="image" src="https://github.com/user-attachments/assets/c0f116fb-ef10-41db-b6ca-23a581ae7342" />
<img width="1908" height="1028" alt="image" src="https://github.com/user-attachments/assets/699e11ac-a157-4a5c-9098-03b3ad7e3eeb" />

## Import using lazy 
```lua
return {
  {
    "0Risotto/starrynight-neovim",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd "colorscheme starrynight" end,
  },
}
```
