{pkgs, ...}:

{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./remap.nix
    ./lsp.nix
    ./telescope.nix
    ./cmp.nix
  ];

  colorschemes.dracula.enable = true;
  colorschemes.dracula.package = pkgs.vimPlugins.dracula-nvim;

  plugins = {
    comment-nvim.enable = true;
    lualine = {
      enable = true;
      iconsEnabled = false;
      theme = "dracula";
      componentSeparators.left = "|";
      componentSeparators.right = "|";
      sectionSeparators.left = "";
      sectionSeparators.right = "";
    };
    oil = {
      enable = true;
      viewOptions.showHidden = true;
    };
    nvim-autopairs.enable = true;
    treesitter = {
      enable = true;
      indent = true;
    };
    treesitter-context.enable = true;
    tmux-navigator = {
      enable = true;
      tmuxNavigatorNoWrap = 1;
      tmuxNavigatorDisableWhenZoomed = 1;
    };
    indent-blankline = {
      enable = true;
      indent.char = "│";
      scope.enabled = true;
    };
    undotree.enable = true;
    which-key.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [nvim-surround vim-sleuth nvim-web-devicons];
  extraConfigLua = ''
    require("nvim-surround").setup()
    require("dracula").setup({
      show_end_of_buffer = true,
      transparent_bg = true,
    })
  '';
}
