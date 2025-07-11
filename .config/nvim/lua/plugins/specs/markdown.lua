return {
  {
    'epwalsh/obsidian.nvim',
    version = '*',
    lazy = true,
    ft = 'markdown',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      workspaces = {
        {
          name = 'work',
          path = os.getenv 'OBSIDIAN_HOME',
        },
      },
      ui = { enable = false },
      mappings = {
        ['gf'] = {
          action = function()
            return require('obsidian').util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
      },
      completion = {
        -- Set to false to disable completion.
        nvim_cmp = true,
        -- Trigger completion at 2 chars.
        min_chars = 0,
      },
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    -- init = function()
    --   local text_color = '#080F18'
    --   vim.cmd(string.format([[highlight Headline1Bg gui=bold guibg=%s guifg=%s ]], '#9FD79F', text_color))
    --   -- vim.cmd(string.format([[highlight Headline1Fg cterm=bold gui=bold guifg=%s]], color_fg))
    -- end,
    enabled = true,
    opts = {
      completions = { lsp = { enabled = true } },
      heading = {
        backgrounds = {},
        sign = false,
        border = false,
        below = ' ',
        above = ' ',
        position = 'left',
        icons = {
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
        },
      },
    },
  },
  -- TODO: install npm or yarn
  -- {
  --   'iamcco/markdown-preview.nvim',
  --   cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  --   build = 'cd app && npm install',
  --   init = function()
  --     vim.g.mkdp_filetypes = { 'markdown' }
  --   end,
  --   ft = { 'markdown' },
  --   -- enabled = false,
  -- },
}
