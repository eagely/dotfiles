{
  programs.nixvim = {

    colorschemes.catppuccin.enable = true;
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts = {
      updatetime = 100;
      relativenumber = true;
      number = true;
      hidden = true;
      mouse = "a";
      mousemodel = "extend";
      splitbelow = true;
      splitright = true;
      completeopt = "menuone,noselect,noinsert";
      modeline = true;
      modelines = 100;
      undofile = true;
      incsearch = true;
      inccommand = "split";
      ignorecase = true;
      smartcase = true;
      scrolloff = 8;
      cursorline = false;
      cursorcolumn = false;
      signcolumn = "auto";
      laststatus = 3;
      fileencoding = "utf-8";
      termguicolors = true;
      spell = true;
      wrap = true;
      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      autoindent = true;
      textwidth = 0;
      foldenable = false;
    };
  };
}
