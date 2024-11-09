return {
  { "nvim-lua/plenary.nvim" },
  { "theprimeagen/harpoon" },
  { "christoomey/vim-tmux-navigator" },
  { "https://tpope.io/vim/surround.git" },
  { "christoomey/vim-tmux-navigator" },
  {
    "stevearc/conform.nvim",
    opts = {
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          -- Conform will run multiple formatters sequentially
          python = { "isort", "black" },
          -- You can customize some of the format options for the filetype (:help conform.format)
          rust = { "rustfmt", lsp_format = "fallback" },
          -- Conform will run the first available formatter
          javascript = { "prettierd", "prettier", stop_after_first = true },
        },
      }),
    },
  },
}
