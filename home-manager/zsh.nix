{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      vim = "nvim";
      os = "nh os switch";
      hs = "nh home switch";
      h = "vim ~/dotfiles/home-manager/home.nix && hs";
      s = "vim ~/dotfiles/nixos/configuration.nix && os";
      p = "vim ~/dotfiles/nixos/packages.nix && os";
    };

    initContent = ''
      bindkey -e
      export NH_FLAKE=$FLAKE
      export JAVA_HOME=${pkgs.jdk}/lib/openjdk

      autoload -U colors && colors

      git_branch() {
        branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
        if [ -n "$branch" ]; then
          echo " $branch"
        fi
      }

      PROMPT="%{$fg_bold[blue]%}%n%{$reset_color%}@%{$fg_bold[yellow]%}%m %{$fg_bold[green]%}%~%{$fg_bold[magenta]%}\$(git_branch) %{$fg_bold[cyan]%}λ%{$reset_color%} "

      murder() {
        if [ $# -eq 0 ]; then
          printf 'usage: murder <pattern>\n' >&2
          return 2
        fi
        pattern="$*"
        ps -ef | awk -v pat="$pattern" 'index($0,pat){print $2}' |
        while IFS= read -r pid; do
          kill -9 "$pid" 2>/dev/null || printf 'failed to kill %s\n' "$pid" >&2
        done
      }
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };
  };
}
