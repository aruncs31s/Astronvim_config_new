return {
  -- probleme
  -- All the custom mapping to make Telescope easy
  vim.api.nvim_set_keymap("n", "<A-b>", ":Telescope buffers<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-w>", ":Telescope live_grep<CR>", { noremap = true, silent = true }),
  -- vim.api.nvim_set_keymap("n", "<A-f>", ":Telescope current_buffer_fuzzy_find<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-o>", ":Telescope oldfiles<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-d>", ":Telescope find_files<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-z>", ":Telescope zoxide list<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<S-h>", ":bp<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<S-l>", ":bn<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-h>", ":bp<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-l>", ":bn<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-t>", ":Telescope todo-comments<CR>", { noremap = true, silent = true }),

  -- Obsidian

  vim.api.nvim_set_keymap("n", "<Leader>of", ":ObsidianSearch<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>ol", ":ObsidianFollowLink<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>oo", ":ObsidianOpen<CR>", { noremap = true, silent = true }),

  vim.api.nvim_set_keymap("n", "<Leader>op", ":ObsidianPasteImg<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-q>", ":bd<CR>", { noremap = true, silent = true }),

  -- Quick Fix
  -- use Ctrl + q to add and , Tab to select multiple when using Telescope
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

  --
  -- Map Alt+< to Ctrl-o
  -- This jump thing current is not working for me so i just gonna use the control i and control o for the moment ..

  --
  -- Jump to definition and spliting it
  -- TODO: Check whether if any other function is mapped to gv and gh
  vim.api.nvim_set_keymap("n", "gv", ":vsplit | normal gd<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "gh", ":split | normal gd<CR>", { noremap = true, silent = true }),

  -- Tabs
  vim.api.nvim_set_keymap("n", "<A-]>", ":tabnext<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<A-[>", ":tabNext<CR>", { noremap = true, silent = true }),
}
