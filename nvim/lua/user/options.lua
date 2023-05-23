local options = {
    number = true,
    relativenumber = true,
	expandtab = true,
	shiftwidth = 4,
    softtabstop = 4,
    tabstop = 4,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

