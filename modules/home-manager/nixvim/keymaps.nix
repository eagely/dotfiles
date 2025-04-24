{ config, lib, ... }:

{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps =
      let
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

              "<leader>l" = ":lua vim.lsp.buf.code_action()<CR>";
              "<leader>i" = ":lua vim.lsp.buf.format()<CR>";
              "<leader>rn" = ":lua vim.lsp.buf.rename()<CR>";
              "<leader>gh" = ":lua vim.lsp.buf.hover({ border = 'rounded', max_width = 80, max_height = 30 })<CR>";
              "<leader>gs" = ":lua vim.diagnostic.open_float({ border = 'rounded', max_width = 80, header = false })<CR>";
              L = "$";
              H = "^";

              "<C-Up>" = ":wincmd k | resize +2<CR>";
              "<C-Down>" = ":wincmd j | resize -2<CR>";
              "<C-Left>" = ":wincmd h | vertical resize -2<CR>";
              "<C-Right>" = ":wincmd l | vertical resize +2<CR>";

              "<M-Up>" = ":move-2<CR>";
              "<M-Down>" = ":move+<CR>";
            };
        visual =
          lib.mapAttrsToList
            (key: action: {
              mode = "v";
              inherit action key;
            })
            {
              ">" = ">gv";
              "<" = "<gv";
              "<TAB>" = ">gv";
              "<S-TAB>" = "<gv";

              "K" = ":m '<-2<CR>gv=gv";
              "J" = ":m '>+1<CR>gv=gv";

              "<leader>s" = ":sort<CR>";
            };
      in
      config.lib.nixvim.keymaps.mkKeymaps { options.silent = true; } (normal ++ visual);
  };
}
