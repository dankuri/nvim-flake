{
  plugins.lsp = {
    enable = true;

    keymaps = {
      diagnostic = {
        "]d" = {
          action = "goto_next";
          desc = "LSP: goto next diagnostic";
        };
        "[d" = {
          action = "goto_prev";
          desc = "LSP: goto prev diagnostic";
        };
      };

      lspBuf = {
        "K" = {
          action = "hover";
          desc = "LSP: hover";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "LSP: code action";
        };
        "<leader>rn" = {
          action = "rename";
          desc = "LSP: rename";
        };
        "<leader>fm" = {
          action = "format";
          desc = "LSP: format";
        };
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
