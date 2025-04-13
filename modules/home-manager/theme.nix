{ ... }:

{
  xdg.configFile."Kvantum/kvantum.kvconfig".text = ''
    [General]
    theme=Catppuccin-Mocha-Lavender
  '';
  catppuccin = {
    enable = true;
    kvantum = {
      enable = true;
      accent = "lavender";
      apply = true;
      flavor = "mocha";
    };
  };
}
