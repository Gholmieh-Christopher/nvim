--< Written by: Christopher Gholmieh
--< Main:
require("packer").startup(function(use)
    --< Plugin Manager:
    use("wbthomason/packer.nvim")

    --< Plugins:
    use({
	"nvim-lualine/lualine.nvim",

	config = function()
	    local navic = require("nvim-navic")

	    require("lualine").setup({
		sections = {
		    lualine_c = {
			{navic.get_location, cond = navic.is_available}
		    }
		}
	    })
	end
    })

    use({
	"rcarriga/nvim-notify",

	config = function()
	    vim.opt.termguicolors = true
	    vim.notify = require("notify")
	end
    })

    use({
	"nvim-tree/nvim-tree.lua",

	requires = {
	    "nvim-tree/nvim-web-devicons"
	},

	config = function()
	    require("nvim-tree").setup({
		sort_by = "case_sensitive",

		view = {
		    mappings = {
			list = {
			    {key = "r", action = "dir_up"},
			    {key = "f", action = "dir_down"}
			}
		    }
		}
	    })
	end
    })

    use({
	"romgrk/barbar.nvim",

	requires = {
	    "nvim-tree/nvim-web-devicons"
	},

	config = function()
	    require("bufferline").setup({
		animation = true,

		auto_hide = false,

		tabpages = true,

		closeable = true,

		diagnostics = {
		    {enabled = true, icon = 'ﬀ'},
    		    {enabled = false},
    		    {enabled = false},
    		    {enabled = true},
		}
    	    })
	end
    })
    
    use({
	"nvim-treesitter/nvim-treesitter",

	run = ":TSUpdate",

	config = function()
	    require("nvim-treesitter.configs").setup({
		auto_install = true,

	        highlight = {
		    enable = false,

		    additional_vim_regex_highlighting = false
	        },

		refactor = {
		    highlight_definitions = {enable = true},

		    smart_rename = {
			enable = true
		    }
		}
	    })
	end
    })

    use("nvim-treesitter/nvim-treesitter-refactor")

    use({
	"Alexis12119/nightly.nvim",

	config = function()
	    require("nightly").setup({
		color = "blue",
		transparent = true,

		styles = {
		    comments = {italic = true}
		}
	    })

	    vim.cmd([[colorscheme nightly]])
	end
    })

    use({
	"neovim/nvim-lspconfig",

	requires = {
	    "saadparwaiz1/cmp_luasnip",
	    "hrsh7th/cmp-nvim-lsp",
	    "SmiteshP/nvim-navic",
	    "hrsh7th/nvim-cmp",
	    "L3MON4D3/LuaSnip"
	},

	config = function()
	    local luasnip = require("luasnip")
	    local cmp = require("cmp")

	    require("nvim-navic").setup()

	    --< Completion:
	    cmp.setup({
		snippet = {
		    expand = function(args)
			luasnip.lsp_expand(args.body)
		    end
		},

		mapping = cmp.mapping.preset.insert({
		    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
		    ['<C-f>'] = cmp.mapping.scroll_docs(4),
		    ['<C-Space>'] = cmp.mapping.complete(),
		    ['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		    }),

		    ['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
			    cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
			    luasnip.expand_or_jump()
			else
			    fallback()
			end
		    end, {"i", "s"}),

		    ['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
			    cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
			    luasnip.jump(-1)
			else
			    fallback()
			end
		    end, {"i", "s"})
		}),

		sources = {
		    {name = "nvim_lsp"},
		    {name = "luasnip"},
		}
	    })
	    --< LSPs:
	    local capabilities = require("cmp_nvim_lsp").default_capabilities()

	    local function on_attach(client, bufnr)
		if client.server_capabilities.documentSymbolProvider then
		    require("nvim-navic").attach(client, bufnr)
		else
		    warn("Cannot connect nvim-navic.")
		end
	    end

	    require("lspconfig").pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	    })

	    require("lspconfig").clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	    })

	    require("lspconfig").gopls.setup({
		capabilities = capabilities,
		on_attach = on_attach
	    })

	    require("lspconfig").lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach
	    })
	end
    })
    
    use({
	"nvim-telescope/telescope.nvim",

	requires = {
	    "nvim-lua/plenary.nvim"
	},

	config = function()
	    require("telescope").setup({})
	end
    })

    use({
	"danymat/neogen",

	config = function()
	    require("neogen").setup({})
	end
    })

    use({
	"numToStr/Comment.nvim",

	config = function()
	    require("Comment").setup()
	end
    })

    use({
	"andweeb/presence.nvim",

	config = function()
	    require("presence").setup({
		auto_update = true
	    })
	end
    })
end)
