local M = {}

function M.setup(opts)
	-- æ/ø/å keymaps
	vim.keymap.set("n", "Ø", "{")
	vim.keymap.set("n", "Æ", "}")

	vim.keymap.set({ "n", "o", "v" }, "ø", "[", { remap = true, desc = "[next" })
	vim.keymap.set({ "n", "o", "v" }, "æ", "]", { remap = true, desc = "]next" })
	vim.keymap.set({ "n", "v", "o" }, "]æ", "]]", { remap = true })
	vim.keymap.set({ "n", "v", "o" }, "[ø", "[[", { remap = true })

	-- easy access to /
	-- i.e: to type ~/ just alt-double tap ¨, then plain double tap ¨.
	vim.keymap.set({ "n", "v", "o", "i" }, "¨", "/")

	-- spell checker
	vim.keymap.set("n", "<leader>ån", "<cmd>set spelllang=nb<cr>")
	vim.keymap.set("n", "<leader>åe", "<cmd>set spelllang=en<cr>")

	-- my other personal preferences
	local defaults = {
		fholmer = false,
	}
	opts = vim.tbl_deep_extend("force", defaults, opts or {})

	if opts.fholmer then
		vim.keymap.set({ "n", "v", "o", "i", "c" }, "¨", "/")
		vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])

		vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				vim.keymap.set({ "n", "v", "o" }, "<C-Up>", "(")
				vim.keymap.set({ "n", "v", "o" }, "<C-Down>", ")")
				vim.keymap.del("n", "<C-Right>")
				vim.keymap.del("n", "<C-Left>")
			end,
		})

		vim.keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
		vim.keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
		vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
		vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
	end
end

return M
