local o = vim.o
local g = vim.g
local fn = vim.fn
local cmd = vim.cmd
local tbl_deep_extend = vim.tbl_deep_extend
local palettes = require('aura.palettes')
local highlights = require('aura.highlights')

-- @classmod Aura
-- @field config (table) configurations from class Config
-- @field styles (table) available styles
-- @field toggle_style_index (integer) for toggle styles
-- @field current_palette (string)
local M = {
  config = require('aura.config'),

  styles = {
    'dark', 'dark(soft text)', 'dark soft', 'dark soft(soft text)',
  },

  toggle_style_index = 1,

  current_palette = 'dark'
}

-- Apply colorscheme, e.g. colorscheme aura
function M.colorscheme()
  -- reset colors
  vim.cmd('hi clear')
  if fn.exists('syntax_on') then cmd('syntax reset') end

  o.background = 'dark'
  g.colors_name = 'aura'

  -- setup colorscheme
  M.current_palette = M.config.style_to_palette()
  local palette = palettes[M.current_palette]
  highlights.setup(palette)
end

-- Toggle between styles
function M.toggle()
  local index = M.toggle_style_index + 1
  if index > #M.styles then index = 1 end

  M.toggle_style_index = index

  o.background = 'dark'
  o.termguicolors = true

  M.colorscheme()
end

-- Setup aura.nvim with configurations and auto apply colorscheme
-- @param custom_config (table) e.g. { style = 'dark' }
function M.setup(custom_config)
  M.set_config(custom_config)
  M.colorscheme()
end

-- Set configurations and without auto apply colorscheme
-- @param custom_config (table) e.g. { style = 'dark' }
function M.set_config(custom_config)
  -- merge config
  if custom_config and type(custom_config) == 'table' then
    M.config = tbl_deep_extend('force', M.config, custom_config)
  end
end

return M
