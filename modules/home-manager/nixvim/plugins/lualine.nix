{
  programs.nixvim.plugins.lualine = {
    enable = true;
    settings = {
      theme = "catppuccin";
      sections = {
        lualine_c = [ "filename" ];
        lualine_x = [ "encoding" "fileformat" "filetype" ];
      };
    };
  };
}
