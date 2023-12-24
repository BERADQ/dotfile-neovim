vim.o.guifont = "Sarasa Term SC,Sarasa Term SC Nerd Font"

vim.g.neovide_cursor_vfx_mode = "wireframe"

vim.g.neovide_refresh_rate = 165

vim.g.neovide_refresh_rate_idle = 60

vim.opt.linespace = 0

vim.g.neovide_scale_factor = 1



local function set_ime(args)
    if args.event:match("Enter$") then
        vim.g.neovide_input_ime = true
    else
        vim.g.neovide_input_ime = false
    end
end

local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime
})

vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
    group = ime_input,
    pattern = "[/\\?]",
    callback = set_ime
})
