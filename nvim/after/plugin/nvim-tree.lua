local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true});
  end

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true});
require("nvim-tree").setup({
    on_attach = my_on_attach,
    view = {
        float = {
            enable = false
        },
        number = true,
        relativenumber = true,
    }
})
