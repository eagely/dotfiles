{
  programs.nixvim.plugins.auto-save = {
    enable = true;
    settings = {
      enabled = true;
      executionMessage = "";
      triggerEvents = [ "InsertLeave" "TextChanged" ];
    };
  };
}
