{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
        "<leader>fd" = "diagnostics";
      };
   };
    extraConfigLua = ''
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }

      require("telescope").load_extension("ui-select")
    '';
  };
}
