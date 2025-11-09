{pkgs, ...}: {
  users = {
    defaultUserShell = pkgs.zsh;
    users.eagely = {
      isNormalUser = true;
      description = "Artemiy Smirnov";
      extraGroups = ["networkmanager" "wheel" "plugdev" "kvm"];
    };
  };
}
