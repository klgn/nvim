return {
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
    keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {desc = "window right" })
    keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window Down" })
    keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window Up" })
  end,
}
