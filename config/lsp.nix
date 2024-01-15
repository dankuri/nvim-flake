{
  plugins.lsp = {
    enable = true;

    keymaps = {
      diagnostic = {
        "]d" = "goto_next";
        "[d" = "goto_prev";
      };

      lspBuf = {
        "K" = "hover";
        "gr" = "references";
        "gd" = "definition";
        "gI" = "implementation";
        "<leader>ca" = "code_action";
        "<leader>rn" = "rename";
        "<leader>fm" = "format";
      };
    };

    servers = {
      nixd.enable = true;
    };
  };
}
