if exists("g:neovide")

    let g:neovide_floating_blur_amount_x = 2.0
    let g:neovide_floating_blur_amount_y = 2.0
    let g:neovide_transparency = 1.0

    let g:neovide_scroll_animation_length = 0.3
    let g:neovide_hide_mouse_when_typing = v:true
    let g:neovide_underline_automatic_scaling = v:false
    let g:neovide_refresh_rate = 60
    let g:neovide_refresh_rate_idle = 15
    let g:neovide_no_idle = v:false
    let g:neovide_confirm_quit = v:true
    let g:neovide_fullscreen = v:false
    let g:neovide_remember_window_size = v:true


    let g:neovide_profiler = v:false


    let g:neovide_cursor_animation_length = 0.03
    let g:neovide_cursor_trail_size = 0.8
    let g:neovide_cursor_antialiasing = v:true
    let g:neovide_cursor_unfocused_outline_width = 0.125

    let g:neovide_cursor_vfx_mode = "railgun" 
    let g:neovide_cursor_vfx_opacity = 200.0
    let g:neovide_cursor_vfx_particle_lifetime = 1.0
    let g:neovide_cursor_vfx_particle_density = 7.0
    let g:neovide_cursor_vfx_particle_speed = 10.0
    let g:neovide_cursor_vfx_particle_phase = 1.5 
    let g:neovide_cursor_vfx_particle_curl = 1.0

endif





call plug#begin()

" Dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" File explorer
Plug 'nvim-tree/nvim-tree.lua'

" Autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Git integration
Plug 'lewis6991/gitsigns.nvim'

" Statusline
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" Fuzzy finding
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'

" Formatting and linting
Plug 'jose-elias-alvarez/null-ls.nvim'

" Color Theme
Plug 'EdenEast/nightfox.nvim'
Plug 'mvllow/modes.nvim'

call plug#end()





set completeopt=menu,menuone,noselect





lua << END

-- File Explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()




-- Git integration
require('gitsigns').setup()





-- Status line
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'powerline',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', path = 1}, 'filesize'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{'filename', path = 1}, 'filesize'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'tabs'},
    lualine_b = {'buffers'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- require"fidget".setup{}





-- Syntax highlighting
local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.completion.spell,
    },
})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    space_char_blankline = " ",
}


-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
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
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})





-- LSP Keybindings
local custom_attach = function(client)
	print("LSP started.");
	--require'completion'.on_attach(client)
	--require'diagnostic'.on_attach(client)

    vim.api.nvim_set_keymap('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>', {})
    vim.api.nvim_set_keymap('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>', {})
	vim.api.nvim_set_keymap('n','K','<cmd>lua vim.lsp.buf.hover()<CR>', {})
	vim.api.nvim_set_keymap('n','gr','<cmd>lua vim.lsp.buf.references()<CR>', {})
	vim.api.nvim_set_keymap('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
	vim.api.nvim_set_keymap('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>', {})
	vim.api.nvim_set_keymap('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>', {})
	vim.api.nvim_set_keymap('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>', {})
end

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['rust_analyzer'].setup{
  on_attach = custom_attach(),
  flags = lsp_flags,
  -- Server-specific settings...
  settings = {
    ["rust-analyzer"] = {
        checkOnSave = {
            command = "clippy",
        }
    }
  }
}




-- Color Theme
require('modes').setup({
	colors = {
		copy = "#c3f2b3",
		delete = "#ffb3b4",
		insert = "#bfefe9",
		visual = "#fbe8a2",
	},

	-- Set opacity for cursorline and number background
	line_opacity = 1.0,

	-- Enable cursor highlights
	set_cursor = false,

	-- Enable cursorline initially, and disable cursorline for inactive windows
	-- or ignored filetypes
	set_cursorline = true,

	-- Enable line number highlights to match cursorline
	set_number = true,

	-- Disable modes highlights in specified filetypes
	-- Please PR commonly ignored filetypes
	ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
})

END





" Other Settings

:map <C-ü> <C-]>
nnoremap <C-f> :Telescope find_files<CR>

set guifont=Mono:h18

colorscheme dayfox

set clipboard+=unnamedplus
set autoindent expandtab tabstop=4 shiftwidth=4
set number
set rnu
