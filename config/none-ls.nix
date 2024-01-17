{
  plugins.none-ls = {
    enable = true;
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

    # autoformatting
    onAttach = ''
      function(client, bufnr)
          local format_is_enabled = true
          vim.api.nvim_create_user_command("ToggleFormat", function()
              format_is_enabled = not format_is_enabled
              print("Setting autoformatting to: " .. tostring(format_is_enabled))
          end, {})
          if client.supports_method("textDocument/formatting") then
              vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
              vim.api.nvim_create_autocmd("BufWritePre", {
                  group = augroup,
                  buffer = bufnr,
                  callback = function()
                      if not format_is_enabled then
                          return
                      end
                      vim.lsp.buf.format({ bufnr = bufnr })
                  end,
              })
          end
      end
    '';
  };
}
