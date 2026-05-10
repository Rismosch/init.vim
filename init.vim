call plug#begin()

" nvim wrapper for treesitter, a parser generator tool and an incremental parsing library
Plug 'nvim-treesitter/nvim-treesitter'

" collection of LSP server configuration
Plug 'neovim/nvim-lspconfig'

" a completion engine plugin for neovim written in Lua.
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" a highly extendable fuzzy finder over lists
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

lua << END

-- configure 'nvim-treesitter/nvim-treesitter'
require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install ({
    'bash',
    'c',
    'cmake',
    'cpp',
    'diff',
    'glsl',
    'make',
    'markdown',
    'markdown_inline',
    'powershell',
    'printf',
    'rust',
    'vim',
    'vimdoc'
}):wait(300000) -- wait max. 5 minute

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

-- configure 'hrsh7th/nvim-cmp'
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})

-- configure 'neovim/nvim-lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('clangd', {
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--query-driver=/opt/devkitpro/devkitPPC/bin/powerpc-eabi-gcc"
  }
})
vim.lsp.config('rust_analyzer', {
  capabilities = capabilities
})

vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')

--vim.keymap.set('n', 'ge', vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set('n', 'ge', vim.diagnostic.goto_next)
vim.keymap.set('n', 'gE', vim.diagnostic.goto_prev)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "LSP: goto definition" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "LSP: goto declaration" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "LSP: goto implementation" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "LSP: list references" })
vim.keymap.set('n', 'K',  vim.lsp.buf.hover, { desc = "LSP: hover docs" })

-- configure 'nvim-telescope/telescope.nvim'
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "%.git/",
      "vendor",
    }
  }
}

END

" treesitter: Install directory for parsers and queries
set runtimepath+=~/.local/share/nvim/site/

" telescope keymap
nnoremap <C-f> :Telescope find_files<CR>

" render whitespaces
set list
set lcs+=space:·

" qol settings
set clipboard+=unnamedplus
set autoindent expandtab tabstop=4 shiftwidth=4
set number
set rnu

" color scheme
:source ~/.config/nvim/ris_color_scheme.vim