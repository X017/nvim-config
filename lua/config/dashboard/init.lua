    require("dashboard").setup({
      theme = "doom", -- "hyper" is another cool option
      config = {
        header = {
        },
        center = {
          { icon = "󰈞  ", desc = "Find File", action = "Telescope find_files" },
          { icon = "󰈚  ", desc = "Recent Files", action = "Telescope oldfiles" },
          { icon = "  ", desc = "Load Session", action = "SessionLoad" },
          { icon = "  ", desc = "Settings", action = "edit $MYVIMRC" },
          { icon = "  ", desc = "Quit", action = "qa" },
        },
      },
})
