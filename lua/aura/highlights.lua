local g = vim.g
local nvim_set_hl = vim.api.nvim_set_hl

-- @classmod Highlights
local M = {}

-- Setup terminal colorscheme
-- @param palette (table) one of field of class Palettes
function M.terminal(palette)
  g.terminal_color_0 = palette.accent12
  g.terminal_color_1 = palette.accent1
  g.terminal_color_2 = palette.accent13
  g.terminal_color_3 = palette.accent1
  g.terminal_color_4 = palette.accent2
  g.terminal_color_5 = palette.accent1
  g.terminal_color_6 = palette.accent2
  g.terminal_color_7 = palette.accent3
  g.terminal_color_8 = palette.accent7
  g.terminal_color_9 = palette.accent3
  g.terminal_color_10 = palette.accent1
  g.terminal_color_11 = palette.accent2
  g.terminal_color_12 = palette.accent2
  g.terminal_color_13 = palette.accent5
  g.terminal_color_14 = palette.accent9
  g.terminal_color_15 = palette.accent3
end

-- Setup groups colorscheme
-- @param palette (table) one of field of class Palettes
function M.groups(palette)
  return {
    -- sytax
    Normal = { fg = palette.accent7, bg = palette.accent12 },
    NormalFloat = { fg = palette.accent7, bg = palette.accent12 },
    Comment = { fg = palette.accent8 },
    Constant = { fg = palette.accent2 },
    Identifier = { fg = palette.accent3 },
    Statement = { fg = palette.accent1 },
    PreProc = { fg = palette.accent3 },
    Type = { fg = palette.accent32 },
    Special = { fg = palette.accent1 },
    SpecialComment = { fg = palette.accent8, italic = true },
    Underlined = { fg = palette.accent2, underline = true },
    Error = { fg = palette.accent5 },
    Todo = { fg = palette.accent6, bold = true, italic = true },

    Cursor = { reverse = true },
    CursorLineNr = { fg = palette.accent7, bg = palette.accent12, bold = true },

    SignColumn = { fg = palette.accent7, bg = palette.accent12 },

    Conceal = { fg = palette.comment },
    CursorColumn = { bg = palette.accent0 },
    CursorLine = { bg = palette.accent35 },
    ColorColumn = { bg = palette.accent35 },

    StatusLine = { fg = palette.accent7, bg = palette.accent0 },
    StatusLineNC = { fg = palette.accent8 },
    StatusLineTerm = { fg = palette.accent7, bg = palette.accent0 },
    StatusLineTermNC = { fg = palette.accent8 },

    Directory = { fg = palette.accent2 },
    DiffAdd = { fg = palette.accent0, bg = palette.accent4 },
    DiffChange = { fg = palette.accent3 },
    DiffDelete = { fg = palette.accent5 },
    DiffText = { fg = palette.accent8 },

    ErrorMsg = { fg = palette.accent5 },
    VertSplit = { fg = palette.accent0, },
    Folded = { fg = palette.accent8 },
    Search = { fg = palette.accent0, bg = palette.accent3 },
    IncSearch = { fg = palette.accent3, bg = palette.accent8 },
    LineNr = { fg = palette.accent8 },
    MatchParen = { fg = palette.accent7, underline = true },
    Pmenu = { fg = palette.accent7, bg = palette.accent12 },
    PmenuSel = { fg = palette.accent7, bg = palette.accent35 },
    PmenuSbar = { bg = palette.accent0 },
    PmenuThumb = { bg = palette.accent35 },

    SpellBad = { fg = palette.accent5, underline = true },
    SpellCap = { fg = palette.accent3 },
    SpellLocal = { fg = palette.accent3 },
    SpellRare = { fg = palette.accent3 },

    TabLine = { fg = palette.accent8 },
    TabLineSel = { fg = palette.accent7 },
    TabLineFill = { bg = palette.accent12 },
    Terminal = { fg = palette.accent7, bg = palette.accent0 },
    Visual = { bg = palette.accent35 },
    VisualNOS = { fg = palette.accent35 },
    WarningMsg = { fg = palette.accent3 },
    WildMenu = { fg = palette.accent0, bg = palette.accent7 },

    EndOfBuffer = { fg = palette.accent0 },

    -- nvim-treesitter/nvim-treesitter
    TSError = { fg = palette.accent5, },
    TSPunctDelimiter = { fg = palette.accent7 },
    TSPunctBracket = { fg = palette.accent7 },
    TSPunctSpecial = { fg = palette.accent7 },

    TSConstant = { fg = palette.accent2 },
    TSConstantBuiltin = { fg = palette.accent2 },

    TSConstMacro = { fg = palette.accent2 },
    TSStringRegex = { fg = palette.accent2 },
    TSString = { fg = palette.accent2 },
    TSStringEscape = { fg = palette.accent2 },
    TSCharacter = { fg = palette.accent2 },
    TSNumber = { fg = palette.accent2 },
    TSBoolean = { fg = palette.accent2 },
    TSFloat = { fg = palette.accent2 },
    TSAnnotation = { fg = palette.accent7 },
    TSAttribute = { fg = palette.accent7 },
    TSNamespace = { fg = palette.accent3 },

    TSFuncBuiltin = { fg = palette.accent3 },
    TSFunction = { fg = palette.accent3 },
    TSFuncMacro = { fg = palette.accent7 },
    TSParameter = { fg = palette.accent7 },
    TSParameterReference = { fg = palette.accent7 },
    TSMethod = { fg = palette.accent3 },
    TSField = { fg = palette.accent7 },
    TSProperty = { fg = palette.accent7 },
    TSConstructor = { fg = palette.accent7 },

    TSConditional = { fg = palette.accent1 },
    TSRepeat = { fg = palette.accent1 },
    TSLabel = { fg = palette.accent },

    TSKeyword = { fg = palette.accent1 },
    TSKeywordFunction = { fg = palette.accent1 },
    TSKeywordOperator = { fg = palette.accent1 },
    TSOperator = { fg = palette.accent1 },
    TSException = { fg = palette.accent1 },
    TSType = { fg = palette.accent32 },
    TSTypeBuiltin = { fg = palette.accent1 },
    TSTypeQualifier = { fg = palette.accent1 },
    TSTypeDefinition = { fg = palette.accent1 },

    TSInclude = { fg = palette.accent1 },
    TSVariable = { fg = palette.accent7 },
    TSVariableBuiltin = { fg = palette.accent7 },

    TSText = { fg = palette.accent7 },
    TSStrong = { fg = palette.accent7, bold = true }, -- bold
    TSEmphasis = { fg = palette.accent7, italic = true, }, -- italic
    TSUnderline = { fg = palette.accent7, underline = true }, -- underline
    TSURI = { fg = palette.accent3, underline = true }, -- url

    TSTag = { fg = palette.accent1 },
    TSTagAttribute = { fg = palette.accent6 },
    TSTagDelimiter = { fg = palette.accent7 },

    -- lewis6991/gitsigns.nvim
    GitSignsAdd = { fg = palette.accent4 },
    GitSignsChange = { fg = palette.accent3 },
    GitSignsDelete = { fg = palette.accent5 },
    GitSignsAddLn = { fg = palette.accent0, bg = palette.accent4 },
    GitSignsChangeLn = { fg = palette.accent0, bg = palette.accent4 },
    GitSignsDeleteLn = { fg = palette.accent0, bg = palette.accent5 },

    -- nvim-telescope/telescope.nvim
    TelescopePromptBorder = { fg = palette.accent8 },
    TelescopeResultsBorder = { fg = palette.accent8 },
    TelescopePreviewBorder = { fg = palette.accent8 },
    TelescopeNormal = { fg = palette.accent7, bg = palette.accent12 },
    TelescopeMatching = { fg = palette.accent1 },
    TelescopePromptPrefix = { fg = palette.accent1 },

    -- kyazdani42/nvim-tree.lua
    NvimTreeNormal = { fg = palette.accent7, bg = palette.accent0 },
    NvimTreeVertSplit = { fg = palette.accent12, bg = palette.accent12 },
    NvimTreeRootFolder = { fg = palette.accent7, bold = true },
    NvimTreeGitDirty = { fg = palette.accent3 },
    NvimTreeGitNew = { fg = palette.accent4 },
    NvimTreeImageFile = { fg = palette.accent6 },
    NvimTreeFolderIcon = { fg = palette.accent1 },
    NvimTreeEmptyFolderName = { fg = palette.accent8 },
    NvimTreeFolderName = { fg = palette.accent7 },
    NvimTreeSpecialFile = { fg = palette.accent6, underline = true },
    NvimTreeOpenedFolderName = { fg = palette.accent7 },
    NvimTreeCursorLine = { bg = palette.accent35 },
    NvimTreeIn = { bg = palette.accent35 },
    NvimTreeEndOfBuffer = { fg = palette.accent0 },

    -- akinsho/bufferline.nvim
    BufferLineIndicatorSelected = { fg = palette.accent1 },
    BufferLineFill = { bg = palette.accent0 },

    -- neovim/nvim-lspconfig
    DiagnosticError = { fg = palette.accent5 },
    DiagnosticWarn = { fg = palette.accent3 },
    DiagnosticInfo = { fg = palette.accent2 },
    DiagnosticHint = { fg = palette.accent2 },
    DiagnosticUnderlineError = { undercurl = true, sp = palette.accent5 },
    DiagnosticUnderlineWarn = { undercurl = true, sp = palette.accent3 },
    DiagnosticUnderlineInfo = { undercurl = true, sp = palette.accent2 },
    DiagnosticUnderlineHint = { undercurl = true, sp = palette.accent2 },
    DiagnosticSignError = { fg = palette.accent5 },
    DiagnosticSignWarn = { fg = palette.accent3 },
    DiagnosticSignInfo = { fg = palette.accent2 },
    DiagnosticSignHint = { fg = palette.accent2 },
    DiagnosticFloatingError = { fg = palette.accent5 },
    DiagnosticFloatingWarn = { fg = palette.accent3 },
    DiagnosticFloatingInfo = { fg = palette.accent2 },
    DiagnosticFloatingHint = { fg = palette.accent2 },
    DiagnosticVirtualTextError = { fg = palette.accent5 },
    DiagnosticVirtualTextWarn = { fg = palette.accent3 },
    DiagnosticVirtualTextInfo = { fg = palette.accent2 },
    DiagnosticVirtualTextHint = { fg = palette.accent2 },

    LspDiagnosticsDefaultError = { fg = palette.accent5 },
    LspDiagnosticsDefaultWarning = { fg = palette.accent3 },
    LspDiagnosticsDefaultInformation = { fg = palette.accent2 },
    LspDiagnosticsDefaultHint = { fg = palette.accent2 },
    LspDiagnosticsUnderlineError = { fg = palette.accent5, undercurl = true },
    LspDiagnosticsUnderlineWarning = { fg = palette.accent3, undercurl = true },
    LspDiagnosticsUnderlineInformation = { fg = palette.accent2, undercurl = true },
    LspDiagnosticsUnderlineHint = { fg = palette.accent2, undercurl = true },
    LspReferenceText = { fg = palette.accent3 },
    LspReferenceRead = { fg = palette.accent3 },
    LspReferenceWrite = { fg = palette.accent3 },


    -- lukas-reineke/indent-blankline.nvim
    IndentBlanklineChar = { fg = palette.accent8, nocombine = true },
    IndentBlanklineContextChar = { fg = palette.accent7, nocombine = true },

    -- hrsh7th/nvim-cmp
    CmpItemKind = { link = 'Pmenu' },
    CmpItemAbbr = { link = 'Pmenu' },
    CmpItemKindMethod = { link = 'TSMethod' },
    CmpItemKindText = { link = 'TSText' },
    CmpItemKindFunction = { link = 'TSFunction' },
    CmpItemKindConstructor = { link = 'TSType' },
    CmpItemKindVariable = { link = 'TSVariable' },
    CmpItemKindClass = { link = 'TSType' },
    CmpItemKindInterface = { link = 'TSType' },
    CmpItemKindModule = { link = 'TSNamespace' },
    CmpItemKindProperty = { link = 'TSProperty' },
    CmpItemKindOperator = { link = 'TSOperator' },
    CmpItemKindReference = { link = 'TSParameterReference' },
    CmpItemKindUnit = { link = 'TSField' },
    CmpItemKindValue = { link = 'TSField' },
    CmpItemKindField = { link = 'TSField' },
    CmpItemKindEnum = { link = 'TSField' },
    CmpItemKindKeyword = { link = 'TSKeyword' },
    CmpItemKindSnippet = { link = 'TSText' },
    CmpItemKindColor = { link = 'cssColor' },
    CmpItemKindFile = { link = 'TSURI' },
    CmpItemKindFolder = { link = 'TSURI' },
    CmpItemKindEvent = { link = 'TSConstant' },
    CmpItemKindEnumMember = { link = 'TSField' },
    CmpItemKindConstant = { link = 'TSConstant' },
    CmpItemKindStruct = { link = 'TSStructure' },
    CmpItemKindTypeParameter = { link = 'TSParameter' },

    -- SmiteshP/nvim-navic
    NavicIconsFile = { link = 'CmpItemKindFile' },
    NavicIconsModule = { link = 'CmpItemKindModule' },
    NavicIconsNamespace = { link = 'CmpItemKindModule' },
    NavicIconsPackage = { link = 'CmpItemKindModule' },
    NavicIconsClass = { link = 'CmpItemKindClass' },
    NavicIconsMethod = { link = 'CmpItemKindMethod' },
    NavicIconsProperty = { link = 'CmpItemKindProperty' },
    NavicIconsField = { link = 'CmpItemKindField' },
    NavicIconsConstructor = { link = 'CmpItemKindConstructor' },
    NavicIconsEnum = { link = 'CmpItemKindEnum' },
    NavicIconsInterface = { link = 'CmpItemKindInterface' },
    NavicIconsFunction = { link = 'CmpItemKindFunction' },
    NavicIconsVariable = { link = 'CmpItemKindVariable' },
    NavicIconsConstant = { link = 'CmpItemKindConstant' },
    NavicIconsString = { link = 'String' },
    NavicIconsNumber = { link = 'Number' },
    NavicIconsBoolean = { link = 'Boolean' },
    NavicIconsArray = { link = 'CmpItemKindClass' },
    NavicIconsObject = { link = 'CmpItemKindClass' },
    NavicIconsKey = { link = 'CmpItemKindKeyword' },
    NavicIconsKeyword = { link = 'CmpItemKindKeyword' },
    NavicIconsNull = { fg = palette.accent2 },
    NavicIconsEnumMember = { link = 'CmpItemKindEnumMember' },
    NavicIconsStruct = { link = 'CmpItemKindStruct' },
    NavicIconsEvent = { link = 'CmpItemKindEvent' },
    NavicIconsOperator = { link = 'CmpItemKindOperator' },
    NavicIconsTypeParameter = { link = 'CmpItemKindTypeParameter' },
    NavicText = { fg = palette.accent8 },
    NavicSeparator = { fg = palette.accent8 },
  }
end

function M.setup(palette)
  -- setup terminal
  M.terminal(palette)

  -- setup groups
  local groups = M.groups(palette)
  for key, setting in pairs(groups) do
    nvim_set_hl(0, key, setting)
  end
end

return M
