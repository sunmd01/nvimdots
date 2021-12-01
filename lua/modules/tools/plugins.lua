local tools = {}
local conf = require("modules.tools.config")

tools["https://github.com.cnpmjs.org/nvim-lua/plenary.nvim"] = {opt = false}
tools["https://github.com.cnpmjs.org/nvim-telescope/telescope.nvim"] = {
    opt = true,
    cmd = "Telescope",
    config = conf.telescope,
    requires = {
        {"https://github.com.cnpmjs.org/nvim-lua/plenary.nvim", opt = false},
        {"https://github.com.cnpmjs.org/nvim-lua/popup.nvim", opt = true}
    }
}
tools["https://github.com.cnpmjs.org/nvim-telescope/telescope-fzf-native.nvim"] = {
    opt = true,
    run = "make",
    after = "telescope.nvim"
}
tools["https://github.com.cnpmjs.org/nvim-telescope/telescope-project.nvim"] = {
    opt = true,
    after = "telescope.nvim"
}
tools["https://github.com.cnpmjs.org/nvim-telescope/telescope-frecency.nvim"] = {
    opt = true,
    after = "telescope.nvim",
    requires = {{"https://github.com.cnpmjs.org/tami5/sqlite.lua", opt = true}}
}
tools["https://github.com.cnpmjs.org/nvim-telescope/telescope-media-files.nvim"] = {
    opt = true,
    after = "telescope.nvim"
}
tools["https://github.com.cnpmjs.org/jvgrootveld/telescope-zoxide"] = {opt = true, after = "telescope.nvim"}
tools["https://github.com.cnpmjs.org/thinca/vim-quickrun"] = {opt = true, cmd = {"QuickRun", "Q"}}
tools["https://github.com.cnpmjs.org/michaelb/sniprun"] = {
    opt = true,
    run = "bash ./install.sh",
    cmd = {"SnipRun", "'<,'>SnipRun"}
}
tools["https://github.com.cnpmjs.org/folke/which-key.nvim"] = {
    opt = true,
    keys = ",",
    config = function() require("which-key").setup {} end
}
tools["https://github.com.cnpmjs.org/folke/trouble.nvim"] = {
    opt = true,
    cmd = {"Trouble", "TroubleToggle", "TroubleRefresh"},
    config = conf.trouble
}
tools["https://github.com.cnpmjs.org/dstein64/vim-startuptime"] = {opt = true, cmd = "StartupTime"}
tools["https://github.com.cnpmjs.org/gelguy/wilder.nvim"] = {
    event = "CmdlineEnter",
    config = conf.wilder,
    requires = {{"https://github.com.cnpmjs.org/romgrk/fzy-lua-native", after = "wilder.nvim"}}
}
tools["https://github.com.cnpmjs.org/nathom/filetype.nvim"] = {opt = false}
return tools
