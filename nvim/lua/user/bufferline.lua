local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup {
    options = {
        offsets = {
            { filetype = "NvimTree", text = "", padding = 1 },
        },
        separator_style = "thick",
        buffer_background = '#111111',
        buffer_foreground = '#eeeeee',
    }
}

