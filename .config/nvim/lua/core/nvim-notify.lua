-- https://github.com/rcarriga/nvim-notify

local notify_opts = {
    -- 动画样式
    -- fade_in_slide_out
    -- fade
    -- slide
    -- static
    stages = "fade",
    -- 超时时间，默认 5s
    timeout = 2000
}

notify_opts.background_colour = "#ffffff"

vim.notify = require("notify")

vim.notify.setup(notify_opts)
