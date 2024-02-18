---@type MappingsTable
local M = {}
M.disabled = {
  n = {
    ["<leader>h"] = "",
  },
}
M.rust = {
  plugin = true,
  n = {
    ["<leader>ca"] = {
      "<cmd>RustLsp codeAction<CR>",
      "Rust Code Action",
      opts = { silent = true },
    },
    ["<leader>rr"] = {
      "<cmd>RustLsp runnables<CR>",
      "Rust Runnables",
      opts = { silent = true },
    },
    ["<leader>ra"] = {
      function()
        local new_name = vim.fn.input "New Name: "
        if new_name and #new_name > 0 then
          vim.lsp.buf.rename(new_name)
        else
          print "别给空值啊……"
        end
      end,
      "Rust Rename",
    },
  },
}
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ww"] = { "<cmd>w<CR>", "Write File", opts = { silent = true } },
  },
}
local leap_map = {
  ["gs"] = { "<Plug>(leap-from-window)", "Leap forward" },
  ["s"] = { "<Plug>(leap-forward)", "Leap forward" },
  ["S"] = { "<Plug>(leap-backward)", "Leap backward" },
}
M.leap = {
  plugin = true,
  n = leap_map,
  x = leap_map,
  o = leap_map,
}

-- more keybinds!
return M
