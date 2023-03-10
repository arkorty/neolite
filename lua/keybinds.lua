local opts = { noremap = true, silent = true }

--Local term_opts = { silent = true }
local bind = vim.api.nvim_set_keymap
local set = vim.keymap.set

-- Bind a leader key
bind("", ";", "<Nop>", opts) -- undo any previous bind
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Modes
--   Normal Mode       = 'n',
--   Insert Mode       = 'i',
--   Visual Mode       = 'v',
--   Visual Block Mode = 'x',
--   Terminal Mode     = 't',
--   Command Mode      = 'c',

-- Normal mode --
-- Basic commands
bind("n", "<Leader>w", ":w<CR>", opts)
bind("n", "<Leader>e", ":q<CR>", opts)
bind("n", "<Leader>q", ":qa<CR>", opts)

-- Nvim tree
bind("n", "<C-f>", ":NvimTreeToggle<CR>", opts)

-- Fuzzy finder
local telescope_status_ok, telescope = pcall(require, "telescope.builtin")
if telescope_status_ok then
	set("n", "<Leader>ff", telescope.find_files, {})
	set("n", "<Leader>fg", telescope.live_grep, {})
	set("n", "<Leader>fb", telescope.buffers, {})
	set("n", "<Leader>fh", telescope.help_tags, {})
end

-- Better tabs
bind("n", "<S-t>", ":tabnew<CR>", opts)
bind("n", "<S-c>", ":tabclose<CR>", opts)
bind("n", "<S-n>", ":tabprev<CR>", opts)
bind("n", "<S-m>", ":tabnext<CR>", opts)

-- Better window navigation
bind("n", "<C-Left>", "<C-w>h", opts)
bind("n", "<C-Down>", "<C-w>j", opts)
bind("n", "<C-Up>", "<C-w>k", opts)
bind("n", "<C-Right>", "<C-w>l", opts)

-- Resize with arrows
bind("n", "<C-k>", ":resize -2<CR>", opts)
bind("n", "<C-j>", ":resize +2<CR>", opts)
bind("n", "<C-l>", ":vertical resize -2<CR>", opts)
bind("n", "<C-h>", ":vertical resize +2<CR>", opts)
