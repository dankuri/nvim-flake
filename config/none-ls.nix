{
  plugins.lsp-format.enable = true;
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;

    sources = {
      formatting = {
        prettier = {
          enable = true; # replace with prettierd after merged pr
          disableTsServerFormatter = true;
        };
        alejandra.enable = true;
        rustfmt.enable = true;
        stylua.enable = true;
        gofumpt.enable = true;
        golines.enable = true;
        goimports_reviser.enable = true;
      };
      diagnostics = {
        staticcheck.enable = true;
        shellcheck.enable = true;
        golangci_lint.enable = true;
      };
    };
  };
}
