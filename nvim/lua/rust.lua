-- let g:rustfmt_autosave = 1

vim.g.rustfmt_autosave = 1

-- local Terminal = require("toggleterm.terminal").Terminal
-- local cargo_run = Terminal:new({ cmd = "cargo run", direction = "float" })

vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w") -- ファイルを保存
-- cargo_run:toggle()
end, { silent = true })
