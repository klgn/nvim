return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  "tpope/vim-surround",
  event = { 'BufReadPre', 'BufNewFile' },
}
