{
  programs.git = {
    enable = true;

    userName = "Artemiy Smirnov";
    userEmail = "artemiy.smirnov@proton.me";

    aliases = {
      c = "commit";
      s = "status";
    };

    signing = {
      key = "~/.ssh/id_ed25519";
      signByDefault = true;
    };

    extraConfig = {
      core.editor = "vim";
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      gpg.format = "ssh";
      commit.gpgSign = true;
    };
  };
}
