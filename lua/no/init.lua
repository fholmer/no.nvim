local M = {}

function M.setup()
    vim.keymap.set("n", "Ø", "{")
    vim.keymap.set("n", "Æ", "}")

    vim.keymap.set({ "n", "o", "v" }, "ø", "[", { remap = true, desc = "[next" })
    vim.keymap.set({ "n", "o", "v" }, "æ", "]", { remap = true, desc = "]next" })
    vim.keymap.set({ "n", "v", "o" }, "]æ", "]]", { remap = true })
    vim.keymap.set({ "n", "v", "o" }, "[ø", "[[", { remap = true })
    vim.keymap.set({ "n", "v", "o", "i" }, "¨", "/")
    
end

return M
