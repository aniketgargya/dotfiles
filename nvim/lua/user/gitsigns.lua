local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
    return
end

gitsigns.setup {}

vim.cmd [[Gitsigns toggle_current_line_blame]]

