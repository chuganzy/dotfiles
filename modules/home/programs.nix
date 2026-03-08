{
  inputs,
  pkgs,
  ...
}:

{
  programs = {
    bat = {
      enable = true;
    };

    fish = {
      enable = true;
      shellAbbrs = {
        be = "bundle exec";
      };
    };

    gh = {
      enable = true;
    };

    git = {
      enable = true;
      includes = [
        { path = "${inputs.gitalias}/gitalias.txt"; }
      ];
      signing = {
        format = "ssh";
        key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOmEYZIqYF0ulGOhKF8sd7CaRQrnR/VH4HoYxu00z1Nz";
        signByDefault = true;
      };
      settings = {
        user = {
          name = "Takeru Chuganji";
          email = "chu@ganzy.jp";
        };
      };
    };

    lazygit = {
      enable = true;
    };

    mise = {
      enable = true;
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

    ripgrep = {
      enable = true;
    };

    ssh = {
      enable = true;
      enableDefaultConfig = false;
    };

    starship = {
      enable = true;
    };

    superfile = {
      enable = true;
    };

    zoxide = {
      enable = true;
    };
  };
}
