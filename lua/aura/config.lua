local utils = require('aura.utils')

-- @classmod Config
-- @field style (string) default style is dark, can set as dark, dark(soft text), dark soft, dark soft(soft text)
local M = {
  style = 'dark',
}

-- Transform config.style to palette, default palette is dark
-- @return (string)
function M.style_to_palette()
  local trans = {
    ['dark'] = 'dark',
    ['dark(soft text)'] = 'dark_soft',
    ['dark soft'] = 'soft_dark',
    ['dark soft(soft text)'] = 'soft_dark_soft',
  }

  local palette = 'dark'
  if utils.key_in_table(trans, M.style) then
    palette = trans[M.style]
  end

  return palette
end

return M
