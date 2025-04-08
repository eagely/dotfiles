{
  programs.nixvim.plugins.lualine = {
    enable = true;
    theme = "catppuccin";
    sections = {
      lualine_c = [ "filename" ];
      lualine_x = [ "encoding" "fileformat" "filetype" ];
    };
  };
}
