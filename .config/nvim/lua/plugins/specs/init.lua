return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'plugins.specs.colorscheme',

  { 'numToStr/Comment.nvim', opts = {} },

  require 'plugins.specs.telescope',
  require 'plugins.specs.lsp',
  require 'plugins.specs.cmp',
  require 'plugins.specs.treesitter',
  require 'plugins.specs.which-key',
  require 'plugins.specs.mini',
  require 'plugins.specs.conform',
  require 'plugins.specs.gitsigns',
  require 'plugins.specs.todo-comments',
  require 'plugins.specs.metals',
}
