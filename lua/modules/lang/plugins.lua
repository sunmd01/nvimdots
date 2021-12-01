local lang = {}
local conf = require("modules.lang.config")

lang["https://github.com.cnpmjs.org/fatih/vim-go"] = {
    opt = true,
    ft = "go",
    run = ":GoInstallBinaries",
    config = conf.lang_go
}
lang["https://github.com.cnpmjs.org/rust-lang/rust.vim"] = {opt = true, ft = "rust"}
lang["https://github.com.cnpmjs.org/simrat39/rust-tools.nvim"] = {
    opt = true,
    ft = "rust",
    config = conf.rust_tools,
    requires = {{"https://github.com.cnpmjs.org/nvim-lua/plenary.nvim", opt = false}}
}
lang["https://github.com.cnpmjs.org/kristijanhusak/orgmode.nvim"] = {
    opt = true,
    ft = "org",
    config = conf.lang_org
}
lang["https://github.com.cnpmjs.org/iamcco/markdown-preview.nvim"] = {
    opt = true,
    ft = "markdown",
    run = "cd app && yarn install"
}
return lang
