-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/christopherg/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/christopherg/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/christopherg/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/christopherg/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/christopherg/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n×\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\5\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\3=\3\b\2B\0\2\1K\0\1\0\16diagnostics\1\0\1\fenabled\2\1\0\1\fenabled\1\1\0\1\fenabled\1\1\0\2\ticon\bï¬€\fenabled\2\1\0\4\14closeable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n³\1\0\0\b\0\f\0\0206\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0005\4\b\0004\5\3\0005\6\6\0009\a\4\0>\a\1\0069\a\5\0=\a\a\6>\6\1\5=\5\t\4=\4\v\3B\1\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\tcond\1\0\0\17is_available\17get_location\nsetup\flualine\15nvim-navic\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neogen = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogen\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  ["nightly.nvim"] = {
    config = { "\27LJ\2\n®\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0\24colorscheme nightly\bcmd\bvim\vstyles\rcomments\1\0\0\1\0\1\vitalic\2\1\0\2\ncolor\tblue\16transparent\2\nsetup\fnightly\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nightly.nvim",
    url = "https://github.com/Alexis12119/nightly.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0À\tbody\15lsp_expandš\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\v€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\0À\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\0À\tjump\rjumpable\21select_prev_item\fvisible¬\1\0\2\6\0\a\0\0169\2\0\0009\2\1\2\15\0\2\0X\3\b€6\2\2\0'\4\3\0B\2\2\0029\2\4\2\18\4\0\0\18\5\1\0B\2\3\1X\2\3€6\2\5\0'\4\6\0B\2\2\1K\0\1\0\31Cannot connect nvim-navic.\twarn\vattach\15nvim-navic\frequire\27documentSymbolProvider\24server_capabilitiesÙ\5\1\0\r\0+\0V6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\2B\2\1\0019\2\4\0015\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\0049\5\n\0019\5\v\0059\5\f\0055\a\14\0009\b\n\0019\b\r\b)\nüÿB\b\2\2=\b\15\a9\b\n\0019\b\r\b)\n\4\0B\b\2\2=\b\16\a9\b\n\0019\b\17\bB\b\1\2=\b\18\a9\b\n\0019\b\19\b5\n\22\0009\v\20\0019\v\21\v=\v\23\nB\b\2\2=\b\24\a9\b\n\0013\n\25\0005\v\26\0B\b\3\2=\b\27\a9\b\n\0013\n\28\0005\v\29\0B\b\3\2=\b\30\aB\5\2\2=\5\n\0044\5\3\0005\6\31\0>\6\1\0055\6 \0>\6\2\5=\5!\4B\2\2\0016\2\0\0'\4\"\0B\2\2\0029\2#\2B\2\1\0023\3$\0005\4%\0006\5&\0\18\a\4\0B\5\2\4X\b\t€6\n\0\0'\f'\0B\n\2\0028\n\t\n9\n\4\n5\f(\0=\2)\f=\3*\fB\n\2\1E\b\3\3R\bõ\1272\0\0€K\0\1\0\14on_attach\17capabilities\1\0\0\14lspconfig\vipairs\1\a\0\0\fpyright\vclangd\ngopls\vlua_ls\thtml\ncssls\0\25default_capabilities\17cmp_nvim_lsp\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\15nvim-navic\bcmp\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nT\0\0\4\0\5\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0006\1\4\0'\3\3\0B\1\2\2=\1\3\0K\0\1\0\frequire\vnotify\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÆ\1\0\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\b\0005\4\6\0004\5\3\0005\6\4\0>\6\1\0055\6\5\0>\6\2\5=\5\a\4=\4\t\3=\3\n\2B\0\2\1K\0\1\0\tview\rmappings\1\0\0\tlist\1\0\0\1\0\2\vaction\rdir_down\bkey\6f\1\0\2\vaction\vdir_up\bkey\6r\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n÷\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rrefactor\17smart_rename\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\14highlight\1\0\2\venable\1&additional_vim_regex_highlighting\1\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16auto_update\2\nsetup\rpresence\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/christopherg/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0À\tbody\15lsp_expandš\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\v€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\0À\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\0À\tjump\rjumpable\21select_prev_item\fvisible¬\1\0\2\6\0\a\0\0169\2\0\0009\2\1\2\15\0\2\0X\3\b€6\2\2\0'\4\3\0B\2\2\0029\2\4\2\18\4\0\0\18\5\1\0B\2\3\1X\2\3€6\2\5\0'\4\6\0B\2\2\1K\0\1\0\31Cannot connect nvim-navic.\twarn\vattach\15nvim-navic\frequire\27documentSymbolProvider\24server_capabilitiesÙ\5\1\0\r\0+\0V6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\2B\2\1\0019\2\4\0015\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\0049\5\n\0019\5\v\0059\5\f\0055\a\14\0009\b\n\0019\b\r\b)\nüÿB\b\2\2=\b\15\a9\b\n\0019\b\r\b)\n\4\0B\b\2\2=\b\16\a9\b\n\0019\b\17\bB\b\1\2=\b\18\a9\b\n\0019\b\19\b5\n\22\0009\v\20\0019\v\21\v=\v\23\nB\b\2\2=\b\24\a9\b\n\0013\n\25\0005\v\26\0B\b\3\2=\b\27\a9\b\n\0013\n\28\0005\v\29\0B\b\3\2=\b\30\aB\5\2\2=\5\n\0044\5\3\0005\6\31\0>\6\1\0055\6 \0>\6\2\5=\5!\4B\2\2\0016\2\0\0'\4\"\0B\2\2\0029\2#\2B\2\1\0023\3$\0005\4%\0006\5&\0\18\a\4\0B\5\2\4X\b\t€6\n\0\0'\f'\0B\n\2\0028\n\t\n9\n\4\n5\f(\0=\2)\f=\3*\fB\n\2\1E\b\3\3R\bõ\1272\0\0€K\0\1\0\14on_attach\17capabilities\1\0\0\14lspconfig\vipairs\1\a\0\0\fpyright\vclangd\ngopls\vlua_ls\thtml\ncssls\0\25default_capabilities\17cmp_nvim_lsp\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\15nvim-navic\bcmp\fluasnip\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n³\1\0\0\b\0\f\0\0206\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0005\4\b\0004\5\3\0005\6\6\0009\a\4\0>\a\1\0069\a\5\0=\a\a\6>\6\1\5=\5\t\4=\4\v\3B\1\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\tcond\1\0\0\17is_available\17get_location\nsetup\flualine\15nvim-navic\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÆ\1\0\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\b\0005\4\6\0004\5\3\0005\6\4\0>\6\1\0055\6\5\0>\6\2\5=\5\a\4=\4\t\3=\3\n\2B\0\2\1K\0\1\0\tview\rmappings\1\0\0\tlist\1\0\0\1\0\2\vaction\rdir_down\bkey\6f\1\0\2\vaction\vdir_up\bkey\6r\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n×\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\5\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\3=\3\b\2B\0\2\1K\0\1\0\16diagnostics\1\0\1\fenabled\2\1\0\1\fenabled\1\1\0\1\fenabled\1\1\0\2\ticon\bï¬€\fenabled\2\1\0\4\14closeable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\15bufferline\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nT\0\0\4\0\5\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0006\1\4\0'\3\3\0B\1\2\2=\1\3\0K\0\1\0\frequire\vnotify\18termguicolors\bopt\bvim\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: presence.nvim
time([[Config for presence.nvim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16auto_update\2\nsetup\rpresence\frequire\0", "config", "presence.nvim")
time([[Config for presence.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n÷\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rrefactor\17smart_rename\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\14highlight\1\0\2\venable\1&additional_vim_regex_highlighting\1\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nightly.nvim
time([[Config for nightly.nvim]], true)
try_loadstring("\27LJ\2\n®\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0\24colorscheme nightly\bcmd\bvim\vstyles\rcomments\1\0\0\1\0\1\vitalic\2\1\0\2\ncolor\tblue\16transparent\2\nsetup\fnightly\frequire\0", "config", "nightly.nvim")
time([[Config for nightly.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
