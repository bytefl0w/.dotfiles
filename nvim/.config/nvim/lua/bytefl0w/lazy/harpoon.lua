return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
         local harpoon = require("harpoon")

         harpoon.setup()

         vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
         vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

         vim.keymap.set("n", "<A-q>", function() harpoon:list():select(1) end)
         vim.keymap.set("n", "<A-w>", function() harpoon:list():select(2) end)
         vim.keymap.set("n", "<A-e>", function() harpoon:list():select(3) end)
         vim.keymap.set("n", "<A-r>", function() harpoon:list():select(4) end)
         vim.keymap.set("n", "<A-t>", function() harpoon:list():select(5) end)
    end
}
