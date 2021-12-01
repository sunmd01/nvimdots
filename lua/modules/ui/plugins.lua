local ui = {}
local conf = require("modules.ui.config")

ui["https://github.com.cnpmjs.org/kyazdani42/nvim-web-devicons"] = {opt = false}
ui["https://github.com.cnpmjs.org/sainnhe/edge"] = {opt = false, config = conf.edge}
ui["https://github.com.cnpmjs.org/hoob3rt/lualine.nvim"] = {
    opt = true,
    after = "lualine-lsp-progress",
    config = conf.lualine
}
ui["https://github.com.cnpmjs.org/arkav/lualine-lsp-progress"] = {opt = true, after = "nvim-gps"}
ui["https://github.com.cnpmjs.org/glepnir/dashboard-nvim"] = {opt = true, event = "BufWinEnter"}
ui["https://github.com.cnpmjs.org/kyazdani42/nvim-tree.lua"] = {
    opt = true,
    cmd = {"NvimTreeToggle", "NvimTreeOpen"},
    config = conf.nvim_tree
}
ui["https://github.com.cnpmjs.org/lewis6991/gitsigns.nvim"] = {
    opt = true,
    event = {"BufRead", "BufNewFile"},
    config = conf.gitsigns,
    requires = {"nvim-lua/plenary.nvim", opt = true}
}
ui["https://github.com.cnpmjs.org/lukas-reineke/indent-blankline.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.indent_blankline
}
ui["https://github.com.cnpmjs.org/akinsho/nvim-bufferline.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_bufferline
}
ui["https://github.com.cnpmjs.org/Xuyuanp/scrollbar.nvim"] = {opt = true, event = "BufRead"}

return ui
