require "nvchad.options"
local o = vim.o;

o.relativenumber =true;
o.tabstop = 8        -- A tab character appears as 8 spaces
o.shiftwidth = 8     -- Indentation levels are 8 spaces wide
o.softtabstop = 8    -- Number of spaces inserted when pressing Tab
o.expandtab = false

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr:block,o:hor20"

-- vim.opt.guicursor = {
--   "n-v-c-sm:block-CursorNormal", -- Block cursor with "CursorNormal" highlight in normal, visual, and command-line modes
--   "i-ci-ve:block-CursorInsert",  -- Block cursor with "CursorInsert" highlight in insert and replace modes
--   "r-cr:block-CursorReplace",    -- Block cursor with "CursorReplace" highlight in replace mode
--   "o:hor20-CursorNormal"         -- Optional, horizontal cursor in operator-pending mode
-- }
-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
