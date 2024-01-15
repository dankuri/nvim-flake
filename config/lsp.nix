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
      lua-ls.enable = true;
      tsserver.enable = true;
      elixirls.enable = true;
      html.enable = true;
      cssls.enable = true;
      tailwindcss.enable = true;
      emmet_ls.enable = true;
      jsonls.enable = true;

      dockerls.enable = true;

      rust-analyzer = {
        enable = true;

        installCargo = true;
        installRustc = true;
      };

      gopls = {
        enable = true;
        extraOptions = {
          completeUnimported = true;
          analyses = {
            unusedparams = true;
            unusedwrite = true;
          };
          staticcheck = true;
        };
      };
    };
  };
}
