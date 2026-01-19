{
  pkgs,
  ...
}:
{
  programs = {
    _1password-shell-plugins = {
      enable = true;
      plugins = with pkgs; [ gh ];
    };

    gh = {
      enable = true;
      settings = {
        git_protocol = "ssh";
      };
    };

    git = {
      enable = true;
      settings = {
        user = {
          name = "Takeru Chuganji";
          email = "chu@ganzy.jp";
          signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOmEYZIqYF0ulGOhKF8sd7CaRQrnR/VH4HoYxu00z1Nz";
        };
        gpg = {
          format = "ssh";
        };
        commit = {
          gpgsign = true;
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

    ssh = {
      enable = true;
      enableDefaultConfig = false;
    };

    starship = {
      enable = true;
      enableZshIntegration = true;
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
      syntaxHighlighting = {
        enable = true;
      };
      shellAliases = {
        be = "bundle exec";
      };
    };
  };
}
