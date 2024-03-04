-- The legend
vim.g.mapleader = " "

-- set pv to open file explorer. TESTING OIL
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move stuff around with JK respecting indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allow search tems to stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allow half-page jumping (ctrl d and u) to stay on the center of the page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- delete to nothing so I don't lose my buffer AND paste said buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Access copy to system clipboard with him
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- Deleting stuff into the void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Replace current word (/s yadda yadda yadda)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make :so geat
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Close current buffer/file
vim.keymap.set("n", "<leader>q", function ()
    vim.cmd("bd!")
end)

-- Toggle NvimTree show/hide
vim.keymap.set('n', '<leader>T', function ()
    vim.cmd("NvimTreeToggle")
end)

-- Moving between windows without having to do C-w first
vim.keymap.set("n", "<C-Up>", "<C-w><Up>")
vim.keymap.set("n", "<C-Down>", "<C-w><Down>")
vim.keymap.set("n", "<C-Left>", "<C-w><Left>")
vim.keymap.set("n", "<C-Right>", "<C-w><Right>")

-- New Window
vim.keymap.set("n", "<leader>nw", function()
    vim.cmd("new")
end)

-- New Window (Vertical)
vim.keymap.set("n", "<leader>nvw", function()
    vim.cmd("vnew")
end)

