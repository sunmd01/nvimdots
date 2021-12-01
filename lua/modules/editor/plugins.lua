local editor = {}
local conf = require("modules.editor.config")

editor["https://github.com.cnpmjs.org/junegunn/vim-easy-align"] = {opt = true, cmd = "EasyAlign"}
editor["https://github.com.cnpmjs.org/itchyny/vim-cursorword"] = {
    opt = true,
    event = {"BufReadPre", "BufNewFile"},
    config = conf.vim_cursorwod
}
editor["https://github.com.cnpmjs.org/terrortylor/nvim-comment"] = {
    opt = false,
    config = function()
        require("nvim_comment").setup({
            hook = function()
                require("ts_context_commentstring.internal").update_commentstring()
            end
        })
    end
}
editor["https://github.com.cnpmjs.org/simrat39/symbols-outline.nvim"] = {
    opt = true,
    cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
    config = conf.symbols_outline
}
editor["https://github.com.cnpmjs.org/nvim-treesitter/nvim-treesitter"] = {
    opt = true,
    run = ":TSUpdate",
    event = "BufRead",
    config = conf.nvim_treesitter
}
editor["https://github.com.cnpmjs.org/nvim-treesitter/nvim-treesitter-textobjects"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["https://github.com.cnpmjs.org/romgrk/nvim-treesitter-context"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["https://github.com.cnpmjs.org/p00f/nvim-ts-rainbow"] = {
    opt = true,
    after = "nvim-treesitter",
    event = "BufRead"
}
editor["https://github.com.cnpmjs.org/JoosepAlviste/nvim-ts-context-commentstring"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["https://github.com.cnpmjs.org/mfussenegger/nvim-ts-hint-textobject"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["https://github.com.cnpmjs.org/SmiteshP/nvim-gps"] = {
    opt = true,
    after = "nvim-treesitter",
    config = conf.nvim_gps
}
editor["https://github.com.cnpmjs.org/lukas-reineke/format.nvim"] = {
    opt = true,
    cmd = {"Format", "FormatWrite"},
    config = conf.format
}
editor["https://github.com.cnpmjs.org/windwp/nvim-ts-autotag"] = {
    opt = true,
    ft = {"html", "xml"},
    config = conf.autotag
}
editor["https://github.com.cnpmjs.org/andymass/vim-matchup"] = {
    opt = true,
    after = "nvim-treesitter",
    config = conf.matchup
}
editor["https://github.com.cnpmjs.org/rhysd/accelerated-jk"] = {opt = true}
editor["https://github.com.cnpmjs.org/hrsh7th/vim-eft"] = {opt = true}
editor["https://github.com.cnpmjs.org/romainl/vim-cool"] = {
    opt = true,
    event = {"CursorMoved", "InsertEnter"}
}
editor["https://github.com.cnpmjs.org/phaazon/hop.nvim"] = {
    opt = true,
    branch = "v1",
    cmd = {
        "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1",
        "HopChar2"
    },
    config = function()
        require("hop").setup {keys = "etovxqpdygfblzhckisuran"}
    end
}
editor["https://github.com.cnpmjs.org/karb94/neoscroll.nvim"] = {
    opt = true,
    event = "WinScrolled",
    config = conf.neoscroll
}
editor["https://github.com.cnpmjs.org/vimlab/split-term.vim"] = {opt = true, cmd = {"Term", "VTerm"}}
editor["https://github.com.cnpmjs.org/akinsho/nvim-toggleterm.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.toggleterm
}
editor["https://github.com.cnpmjs.org/numtostr/FTerm.nvim"] = {opt = true, event = "BufRead"}
editor["https://github.com.cnpmjs.org/norcalli/nvim-colorizer.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_colorizer
}
editor["https://github.com.cnpmjs.org/rmagatti/auto-session"] = {
    opt = true,
    cmd = {"SaveSession", "RestoreSession", "DeleteSession"},
    config = conf.auto_session
}
editor["https://github.com.cnpmjs.org/jdhao/better-escape.vim"] = {opt = true, event = "InsertEnter"}
editor["https://github.com.cnpmjs.org/rcarriga/nvim-dap-ui"] = {
    opt = false,
    config = conf.dapui,
    requires = {
        {"mfussenegger/nvim-dap", config = conf.dap}, {
            "Pocco81/DAPInstall.nvim",
            opt = true,
            cmd = {"DIInstall", "DIUninstall", "DIList"},
            config = conf.dapinstall
        }
    }
}
editor["https://github.com.cnpmjs.org/tpope/vim-fugitive"] = {opt = true, cmd = {"Git", "G"}}
editor["https://github.com.cnpmjs.org/chentau/marks.nvim"] = {
    opt = true,
    event = "BufReadPost",
    config = conf.marks
}

return editor
