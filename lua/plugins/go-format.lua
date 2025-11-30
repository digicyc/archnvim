return {
  -- Use Conform (LazyVim default formatter) and disable goimports for Go
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts = opts or {}
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    -- Only use gofumpt for Go to avoid removing unused imports
    opts.formatters_by_ft.go = { "gofumpt" }

    -- Optionally, ensure format-on-save stays enabled for Go but without import pruning
    -- If you prefer to disable formatting on save for Go entirely, uncomment below:
    -- opts.format_on_save = function(bufnr)
    --   if vim.bo[bufnr].filetype == "go" then
    --     return nil -- disable for Go
    --   end
    --   return { timeout_ms = 500, lsp_fallback = true }
    -- end

    return opts
  end,
}
