{ config, lib, ... }:
{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = let
        normal =
      lib.mapAttrsToList
      (key: action: {
        mode = "n";
        inherit action key;
      })
      {
        "<Space>" = "<NOP>";

        "<esc>" = ":noh<CR>";

        Y = "y$";

        "<C-c>" = ":b#<CR>";

        "<C-x>" = ":close<CR>";

        "<leader>s" = ":w<CR>";
        "<C-s>" = ":w<CR>";

        "<leader>h" = "<C-w>h";
        "<leader>l" = "<C-w>l";

        L = "$";
        H = "^";

        "<C-Up>" = ":resize -2<CR>";
        "<C-Down>" = ":resize +2<CR>";
        "<C-Left>" = ":vertical resize +2<CR>";
        "<C-Right>" = ":vertical resize -2<CR>";

        "<M-Up>" = ":move-2<CR>";
        "<M-Down>" = ":move+<CR>";

        "<leader>rp" = ":!remi push<CR>";
      };
    visual =
      lib.mapAttrsToList
      (key: action: {
        mode = "v";
        inherit action key;
      })
      {
        # better indenting
        ">" = ">gv";
        "<" = "<gv";
        "<TAB>" = ">gv";
        "<S-TAB>" = "<gv";

        # move selected line / block of text in visual mode
        "K" = ":m '<-2<CR>gv=gv";
        "J" = ":m '>+1<CR>gv=gv";

        # sort
        "<leader>s" = ":sort<CR>";
      };
    in
      config.lib.nixvim.keymaps.mkKeymaps { options.silent = true; } (normal ++ visual);
};
  }
