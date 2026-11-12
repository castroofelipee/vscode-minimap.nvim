-- lazy.nvim spec: { "castroofelipee/vscode-minimap.nvim", import = "vscode-minimap.plugins" }
return {
  {
    "Isrothy/neominimap.nvim",
    version = "v3.x.x",
    lazy = false,
    keys = {
      { "<leader>um", "<cmd>Neominimap Toggle<cr>", desc = "Toggle Minimap" },
    },
    init = function()
      -- only open once a real file is read (not on `nvim .` or a dashboard)
      vim.api.nvim_create_autocmd("BufReadPost", {
        once = true,
        callback = function() vim.cmd("Neominimap Enable") end,
      })
      vim.g.neominimap = vim.tbl_deep_extend("force", {
        auto_enable = false,
        x_multiplier = 1, -- one dot = one column of code: closest to VS Code's tiny text
        y_multiplier = 1, -- one dot = one line of code
        layout = "split", -- a normal window, so it can be resized like a sidebar
        split = { minimap_width = 20 },
      }, vim.g.vscode_minimap or {})
    end,
  },
}
