local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local status_ok, packer = pcall(require, "packer")
    if not status_ok then
        return
end

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

return packer.startup(function(use)
    use { "wbthomason/packer.nvim" }
    use { "bluz71/vim-moonfly-colors", as = "moonfly" }

    use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use { "p00f/nvim-ts-rainbow" }

    use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }

    use { "akinsho/bufferline.nvim" }
    use { "moll/vim-bbye" }


    if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

