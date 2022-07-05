local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- keymap for file tree
keymap("n", "<leader>e", ":NnnExplorer<cr>", opts)
-- key map for cd with zxide
keymap("n" , "<leader>fz" , ":Telescope zoxide list<cr>",opts)
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr> ", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr> ", opts)
keymap("n", "<leader>fs", "<cmd>Telescope grep_string<cr> ", opts)
keymap("n", "<leader>ft", "<cmd>Telescope treesitter<cr> ", opts)
-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
 -- Insert --
    --arabic
keymap("i","<C-a>","<C-^>",opts)
keymap("n","<leader>a",":set invarab<CR>",opts)
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts) --for yank consistincy
-- remap for iron.nvim
keymap("n","<leader>jf",":IronFocus<CR>",opts)
keymap("n","<leader>jn" ,"ctrih/^# %%<CR><CR>:noh<CR>",  { noremap = false, silent = true })
keymap("n","<leader>jj" ,"/^# %%<CR><CR>:noh<CR>",  { noremap = false, silent = true })
keymap("n","<leader>jk" ,"/^# %%<CR><CR>:noh<CR>",  { noremap = false, silent = true })
-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
---lan test----------
keymap("n","<leader>a",":set arabic<CR>",opts)
keymap("n","<leader>;",":set norightleft <CR> set keymap='Restore default (US) keyboard layout'",opts)
-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<Esc>", "<C-\\><C-n>" , term_opts)
