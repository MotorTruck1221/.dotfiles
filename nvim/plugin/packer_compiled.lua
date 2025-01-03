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
local package_path_str = "/home/motortruck1221/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?.lua;/home/motortruck1221/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?/init.lua;/home/motortruck1221/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?.lua;/home/motortruck1221/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/motortruck1221/.cache/nvim/packer_hererocks/2.1.1725453128/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  gruvbox = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["hologram.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/hologram.nvim",
    url = "https://github.com/edluffy/hologram.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["markview.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/markview.nvim",
    url = "https://github.com/OXY2DEV/markview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.map"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/mini.map",
    url = "https://github.com/echasnovski/mini.map"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  nvterm = {
    config = { "\27LJ\2\n�\3\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\n\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\4=\4\v\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\vtoggle\1\0\1\15horizontal\15<leader>tr\14terminals\1\0\2\vtoggle\0\14terminals\0\14type_opts\1\0\1\14type_opts\0\rvertical\1\0\2\16split_ratio\4\0����\3\rlocation\15rightbelow\15horizontal\1\0\2\16split_ratio\4��̙\3����\3\rlocation\15rightbelow\nfloat\1\0\3\rvertical\0\nfloat\0\15horizontal\0\1\0\6\nwidth\4\0����\3\bcol\4\0����\3\rrelative\veditor\vheight\4����\t����\3\vborder\vsingle\brow\4��̙\3����\3\nsetup\vnvterm\frequire\0" },
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/nvterm",
    url = "https://github.com/NvChad/nvterm"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/vim-godot",
    url = "https://github.com/habamax/vim-godot"
  },
  ["vim-suda"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/vim-suda",
    url = "https://github.com/lambdalisue/vim-suda"
  },
  vimsence = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/vimsence",
    url = "https://github.com/vimsence/vimsence"
  },
  ["zig.vim"] = {
    loaded = true,
    path = "/home/motortruck1221/.local/share/nvim/site/pack/packer/start/zig.vim",
    url = "https://github.com/ziglang/zig.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvterm
time([[Config for nvterm]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\n\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\4=\4\v\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\vtoggle\1\0\1\15horizontal\15<leader>tr\14terminals\1\0\2\vtoggle\0\14terminals\0\14type_opts\1\0\1\14type_opts\0\rvertical\1\0\2\16split_ratio\4\0����\3\rlocation\15rightbelow\15horizontal\1\0\2\16split_ratio\4��̙\3����\3\rlocation\15rightbelow\nfloat\1\0\3\rvertical\0\nfloat\0\15horizontal\0\1\0\6\nwidth\4\0����\3\bcol\4\0����\3\rrelative\veditor\vheight\4����\t����\3\vborder\vsingle\brow\4��̙\3����\3\nsetup\vnvterm\frequire\0", "config", "nvterm")
time([[Config for nvterm]], false)

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
