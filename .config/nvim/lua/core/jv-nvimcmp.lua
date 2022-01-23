vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.shortmess:append "c"

vim.api.nvim_set_keymap(
  "i",
  "<C-x><C-m>",
  [[<c-r>=luaeval("require('complextras').complete_matching_line()")<CR>]],
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "i",
  "<C-x><C-d>",
  [[<c-r>=luaeval("require('complextras').complete_line_from_cwd()")<CR>]],
  { noremap = true }
)

local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },

  sources = {
    -- { name = "gh_issues" },

    { name = "nvim_lua" },
    -- { name = "zsh" },

    -- { name = "nvim_lsp" },
    -- { name = "path" },
    -- { name = "luasnip" },
    -- { name = "buffer", keyword_length = 5 },
    { name = "nvim_lsp" },
    { name = "treesitter" },
    { name = "vsnip" },
    { name = "path" },
    { name = "look" },
    { name = "buffer",
      options = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
    { name = "spell" },

},

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  -- formatting = {
    -- format = lspkind.cmp_format {
      -- with_text = true,
      -- menu = {
        -- buffer = "[buf]",
        -- nvim_lsp = "[LSP]",
        -- nvim_lua = "[api]",
        -- path = "[path]",
        -- -- luasnip = "[snip]",
        -- -- gh_issues = "[issues]",
      -- },
    -- },
  -- },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
      vim_item.menu = ({
        nvim_lsp = "ﲳ",
        nvim_lua = "",
        treesitter = "",
        path = "ﱮ",
        buffer = "﬘",
        zsh = "",
        vsnip = "",
        spell = "暈",
      })[entry.source.name]

      return vim_item
    end,
  },

  experimental = {
    native_menu = true,
    ghost_text = true,
  },
  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
}
