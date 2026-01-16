{
  pkgs,
  ...
}:
{
  programs = {
    gh = {
      enable = true;
    };

    git = {
      enable = true;
      settings = {
        user = {
          name = "Takeru Chuganji";
          email = "chu@ganzy.jp";
        };
      };
    };

    mise = {
      enable = true;
      enableZshIntegration = true;
      globalConfig = {
        tools = {
          bun = "1.3";
          node = "24";
          ruby = "3.2";
        };
        settings = {
          idiomatic_version_file_enable_tools = [ "node" ];
        };
      };
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    zsh = {
      enable = true;
      autosuggestion = {
        enable = true;
      };
      shellAliases = {
        be = "bundle exec";
      };
      plugins = [
        {
          name = "powerlevel10k";
          src = pkgs.zsh-powerlevel10k;
          file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
        }
        {
          name = "powerlevel10k-config";
          src = ./dotfiles;
          file = "p10k.zsh";
        }
        {
          name = "zsh-completions";
          src = pkgs.zsh-completions;
        }
      ];
    };
  };
}
