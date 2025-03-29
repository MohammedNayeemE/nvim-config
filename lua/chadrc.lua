-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

-- M.nvdash {
-- 	status = {
-- 		dashboard = true
-- 	}
-- }

M.ui = {
	nvdash = {
		load_on_startup = true
	}
}

M.base46 = {
	theme = "rosepine",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

local vim = vim

-- Function to load template from file and insert it
local function insert_template()
    local template_path = vim.fn.stdpath("config") .. "/templates/Solution.cpp"
    local file = io.open(template_path, "r")

    if file then
        local lines = {}
        for line in file:lines() do
            table.insert(lines, line)
        end
        file:close()
        vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
    else
        vim.notify("Template file not found: " .. template_path, vim.log.levels.ERROR)
    end
end

local function insert_practice_template()
    local template_path = vim.fn.stdpath("config") .. "/templates/Practice.cpp"
    local file = io.open(template_path, "r")

    if file then
        local lines = {}
        for line in file:lines() do
            table.insert(lines, line)
        end
        file:close()
        vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
    else
        vim.notify("Template file not found: " .. template_path, vim.log.levels.ERROR)
    end
end

local function insert_leetcode_template()
    local template_path = vim.fn.stdpath("config") .. "/templates/Leetcode.cpp"
    local file = io.open(template_path, "r")

    if file then
        local lines = {}
        for line in file:lines() do
            table.insert(lines, line)
        end
        file:close()
        vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
    else
        vim.notify("Template file not found: " .. template_path, vim.log.levels.ERROR)
    end
end
-- Add a command to insert the template
vim.api.nvim_create_user_command("Cpp", insert_template, {})
vim.api.nvim_create_user_command("CppI", insert_practice_template , {});
vim.api.nvim_create_user_command("CppL" , insert_leetcode_template , {});
return M
