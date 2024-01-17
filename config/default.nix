{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./remap.nix
    ./lsp.nix
    ./none-ls.nix
    ./telescope.nix
    ./cmp.nix
    ./git.nix
    ./harpoon.nix
  ];

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
    fidget = {
      enable = true;
      progress.ignoreDoneAlready = true;
    };
    nvim-autopairs.enable = true;
    ts-autotag.enable = true;
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

  autoGroups = {LspFormatting = {};};

  extraPlugins = with pkgs.vimPlugins; [nvim-surround vim-sleuth nvim-web-devicons dracula-nvim];
  extraConfigLua = ''
    require("nvim-surround").setup()

    -- nixvim's dracula is a version for vim
    require("dracula").setup({
      show_end_of_buffer = true,
      transparent_bg = true,
    })
    vim.cmd.colorscheme("dracula")

    -- adds borders to floating previews (lsp hover, diagnostics, ...)
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or "rounded"
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end
  '';
}
