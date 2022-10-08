-- @classmod Utils
local M = {}

-- Check if key in table
-- @param tbl (table)
-- @param key (string)
-- @return (boolean)
M.key_in_table = function(tbl, key)
  if tbl == nil then return false end

  for k, _ in pairs(tbl) do
    if k == key then
      return true
    end
  end

  return false
end

-- Merge tables, right table is high priority than left one. It's means if has same keys, the right one will override the left one
-- @param (...table)
-- @return (table)
M.tbl_merge = function(...)
  local newTbl = {}

  for _, tbl in pairs({ ... }) do
    if type(tbl) == 'table' then
      for k, v in pairs(tbl) do
        newTbl[k] = v
      end
    end
  end

  return newTbl
end

return M
