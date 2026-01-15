{
  ...
}:
{
  programs = {
    firefox = {
      enable = true;
    };

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

    vscode = {
      enable = true;
    };

    zsh = {
      enable = true;
      shellAliases = {
        be = "bundle exec";
        dev = ''cd "$HOME/Developer"'';
      };
    };
  };
}
