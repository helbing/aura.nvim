local aura = require('aura')
local palettes = require('aura.palettes')
local palette = palettes[aura.current_palette]

-- @classmod Aura
return {
  inactive = {
    a = { fg = palette.accent8, bg = palette.accent12, gui = 'bold' },
    b = { fg = palette.accent8, bg = palette.accent12 },
    c = { fg = palette.accent8, bg = palette.accent12 },
  },
  normal = {
    a = { fg = palette.accent12, bg = palette.accent1, gui = 'bold' },
    b = { fg = palette.accent7, bg = palette.accent12 },
    c = { fg = palette.accent8, bg = palette.accent12 },
  },
  visual = {
    a = { fg = palette.accent12, bg = palette.accent3, gui = 'bold' },
  },
  replace = {
    a = { fg = palette.accent12, bg = palette.accent5, gui = 'bold' },
  },
  insert = {
    a = { fg = palette.accent12, bg = palette.accent2, gui = 'bold' },
  },
  command = {
    a = { fg = palette.accent12, bg = palette.accent35, gui = 'bold' },
  },
  terminal = {
    a = { fg = palette.accent12, bg = palette.accent4, gui = 'bold' },
  },
}
