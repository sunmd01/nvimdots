local completion = {}
local conf = require("modules.completion.config")

completion["https://github.com.cnpmjs.org/neovim/nvim-lspconfig"] = {
    opt = true,
    event = "BufReadPre",
    config = conf.nvim_lsp
}
completion["https://github.com.cnpmjs.org/williamboman/nvim-lsp-installer"] = {
    opt = true,
    after = "nvim-lspconfig"
}
completion["https://github.com.cnpmjs.org/tami5/lspsaga.nvim"] = {opt = true, after = "nvim-lspconfig"}
completion["https://github.com.cnpmjs.org/kosayoda/nvim-lightbulb"] = {
    opt = true,
    after = "nvim-lspconfig",
    config = conf.lightbulb
}
completion["https://github.com.cnpmjs.org/ray-x/lsp_signature.nvim"] = {opt = true, after = "nvim-lspconfig"}
completion["https://github.com.cnpmjs.org/hrsh7th/nvim-cmp"] = {
    config = conf.cmp,
    event = "InsertEnter",
    requires = {
        {"https://github.com.cnpmjs.org/saadparwaiz1/cmp_luasnip", after = "LuaSnip"},
        {"https://github.com.cnpmjs.org/hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip"},
        {"https://github.com.cnpmjs.org/hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp"},
        {"https://github.com.cnpmjs.org/andersevenrud/compe-tmux", branch = "cmp", after = "cmp-nvim-lua"},
        {"https://github.com.cnpmjs.org/hrsh7th/cmp-path", after = "compe-tmux"},
        {"https://github.com.cnpmjs.org/f3fora/cmp-spell", after = "cmp-path"},
        {"https://github.com.cnpmjs.org/lukas-reineke/cmp-rg", after = "cmp-spell"}
        -- {
        --     'tzachar/cmp-tabnine',
        --     run = './install.sh',
        --     after = 'cmp-spell',
        --     config = conf.tabnine
        -- }
    }
}
completion["https://github.com.cnpmjs.org/L3MON4D3/LuaSnip"] = {
    after = "nvim-cmp",
    config = conf.luasnip,
    requires = "rafamadriz/friendly-snippets"
}
completion["https://github.com.cnpmjs.org/windwp/nvim-autopairs"] = {
    after = "nvim-cmp",
    config = conf.autopairs
}
completion["https://github.com.cnpmjs.org/github/copilot.vim"] = {opt = true, cmd = "Copilot"}

return completion
