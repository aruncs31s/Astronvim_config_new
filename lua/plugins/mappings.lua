return {
  -- All the custom mapping to make Telescope easy
  vim.api.nvim_set_keymap("n", "<A-b>", ":Telescope buffers<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-w>", ":Telescope live_grep<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-f>", ":Telescope current_buffer_fuzzy_find<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-o>", ":Telescope oldfiles<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-d>", ":Telescope find_files<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-z>", ":Telescope zoxide list<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<S-h>", ":bp<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<S-l>", ":bn<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-h>", ":bp<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-l>", ":bn<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-t>", ":Telescope todo-comments<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-T>", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true }),

  -- Obsidian

  vim.api.nvim_set_keymap("n", "<Leader>of", ":ObsidianSearch<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>ol", ":ObsidianFollowLink<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>oo", ":ObsidianOpen<CR>", { noremap = true, silent = true }),

  vim.api.nvim_set_keymap("n", "<Leader>op", ":ObsidianPasteImg<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-q>", ":bd<CR>", { noremap = true, silent = true }),

  -- Quick Fix

  vim.api.nvim_set_keymap("n", "<Leader>qn", ":cnext<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>qq", ":cclose<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>qo", ":copen<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>qp", ":cprevious<CR>", { noremap = true, silent = true }),

  --- Visual
  vim.api.nvim_set_keymap("v", "<A-h>", ":bp<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("v", "<A-l>", ":bn<CR>", { noremap = true, silent = true }),

  -- TODO: Add git Mappings,
  -- TODO: Add zoxide,

  -- Map Alt+> to Ctrl-i
  -- vim.api.nvim_set_keymap("n", "gi", "<C-i>", { noremap = true, silent = true }),

  -- Map Alt+< to Ctrl-o
}
