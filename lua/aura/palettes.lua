local utils = require('aura.utils')

-- @local
local common_colors = {
  accent0 = '#0f0f0f',
  accent1 = '#a277ff',
  accent2 = '#61ffca',
  accent3 = '#ffca85',
  accent4 = '#9dff65',
  accent5 = '#ff6767',
  accent6 = '#f694ff',
  accent7 = '#edecee', -- foreground
  accent8 = '#6d6d6d', -- comments
  accent31 = '#ffca85',
  accent32 = '#82e2ff',
  accent33 = '#24222c',
  accent34 = '#00000000', -- fully transparent,
  accent35 = '#525156', -- activity bar inactive foreground,
}

-- @local
local common_ui = {
  accent9 = '#cdccce',
  accent10 = '#adacae',
  accent13 = '#2d2d2d',
  accent14 = '#af8aff7f',
  accent15 = '#4d4d4d',
  accent16 = '#ffffff00',
  accent17 = '#a394f033', -- secondary-selection
  accent18 = '#a394f000',
  accent19 = '#3ea7847f',
  accent20 = '#3d375e7f', -- primary-selection
  accent22 = '#4d466e',
  accent23 = '#3b334b',
  accent25 = '#49c29a',
  accent26 = '#00d89023',
  accent27 = '#ff474720',
  accent28 = '#121016',
  accent29 = '#000000',
  accent30 = '#2d2b38',
  accent33 = '#2e2b38',
  accent36 = '#a19c77', -- debugging background
  accent37 = '#353424', -- breakpoint frame highlight
  accent38 = '#29263c', -- primary-selection without alpha
}

-- @local
local common_soft_ui = utils.tbl_merge(common_ui, {
  accent9 = '#b4b4b4',
})

-- @local
local common_syntax_highlighting = common_colors

-- @local
local common_soft_syntax_highlighting = utils.tbl_merge(common_colors, {
  -- shade 0.2, desaturate 0.1
  accent1 = '#986ef2',
  accent2 = '#5cf4c1',
  accent3 = '#f3c07f',
  accent4 = '#95f45e',
  accent5 = '#f15f60',
  accent6 = '#ea8bf3',
  accent7 = '#e2e2e2',
  accent31 = '#f3c07f',
  accent32 = '#7ed7f2',
})

-- @classmod Palettes
local M = {}

M.dark = utils.tbl_merge(common_syntax_highlighting, common_ui, {
  -- UI
  accent11 = '#000000',
  accent12 = '#15141b', -- background
  accent21 = '#110f18',
  accent24 = '#121016',
})

M.dark_soft = utils.tbl_merge(common_soft_syntax_highlighting, common_soft_ui, {
  -- UI
  accent11 = M.dark.accent11,
  accent12 = M.dark.accent12,
  accent13 = '#2d2d2d',
  accent21 = M.dark.accent21,
  accent24 = M.dark.accent24,
})

M.soft_dark = utils.tbl_merge(common_syntax_highlighting, common_ui, {
  -- UI
  accent11 = '#141414',
  accent12 = '#21202e',
  accent13 = '#444444',
  accent21 = '#1c1b22',
  accent24 = '#1f1a27',
})

M.soft_dark_soft = utils.tbl_merge(common_soft_syntax_highlighting, common_soft_ui, {
  -- UI
  accent11 = M.soft_dark.accent11,
  accent12 = M.soft_dark.accent12,
  accent13 = M.soft_dark.accent13,
  accent21 = M.soft_dark.accent21,
  accent24 = M.soft_dark.accent24,
})

return M
