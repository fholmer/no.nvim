local M = {}

function M.setup()
    vim.keymap.set("n", "ø", "[")
    vim.keymap.set("n", "øø", "[[")
    vim.keymap.set("n", "æ", "]")
    vim.keymap.set("n", "ææ", "]]")
    vim.keymap.set("n", "Ø", "{")
    vim.keymap.set("n", "Æ", "}")
end

return M
