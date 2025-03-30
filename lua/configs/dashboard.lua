local dashboard = require("dashboard")
local api = vim.api
local quotes = {
  "\"Code. Compile. Conquer.\"",
  "\"Talk is cheap. Show me the code.\" – Linus Torvalds",
  "\"Make it work, make it right, make it fast.\" – Kent Beck",
  "\"First, solve the problem. Then, write the code.\" – John Johnson",
  "\"Bug-free code is a myth. Keep debugging!\"",
  "\"Programs must be written for people to read, and only incidentally for machines to execute.\" – Harold Abelson",
  "\"while(not_success) { try_again(); }\"",
  "\"Code is like humor. When you have to explain it, it's bad.\" – Cory House",
  "\"It's not a bug, it's a feature!\"",
  "\"Keep it simple, stupid.\""
}
-- Function to get the current date and time
local function get_date_time()
  return os.date("%A, %d %B %Y | %H:%M:%S")
end

local function get_random_quote()
  math.randomseed(os.time())
  local quote = quotes[math.random(#quotes)]
  
  return {
    "", 
    "┏" .. string.rep("━", string.len(quote) + 2) .. "┓",
    "┃ " .. quote .. " ┃",
    "┗" .. string.rep("━", string.len(quote) + 2) .. "┛",
    "" 
  }
end

dashboard.setup({
  theme = 'doom',
  config = {
	header = {
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 
"███╗   ███╗██████╗ ███╗   ██╗██╗   ██╗██╗███╗   ███╗" , 
"████╗ ████║██╔══██╗████╗  ██║██║   ██║██║████╗ ████║" , 
"██╔████╔██║██║  ██║██╔██╗ ██║██║   ██║██║██╔████╔██║" , 
"██║╚██╔╝██║██║  ██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║" , 
"██║ ╚═╝ ██║██████╔╝██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║" , 
"╚═╝     ╚═╝╚═════╝ ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝" ,
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 
"                                                    " , 

		},
    -- header = {
    --
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "                                                       ",
    --   "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  ",
    --   "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ",
    --   "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ",
    --   "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ",
    --   "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  ",
    --   "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  ",
    --   "                                                       ",
    --   "                                                       ",
    -- },
    center = {
      {
        icon = '󰃰 ',
        desc = get_date_time(),
        action = '',
      },
      {
        icon = '󰈞 ',
        desc = 'Find File',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        icon = '󰈬 ',
        desc = 'Recent Files',
        action = 'Telescope oldfiles',
        key = 'r',
      },
      {
        icon = '󰊄 ',
        desc = 'Find Word',
        action = 'Telescope live_grep',
        key = 'g',
      },
      {
        icon = '󰉋 ',
        desc = 'New File',
        action = 'enew',
        key = 'n',
      },
      {
        icon = '󰄉 ',
        desc = 'Quit',
        action = 'quit',
        key = 'q',
      },
    },
    footer =  get_random_quote()
  }
})

return dashboard
