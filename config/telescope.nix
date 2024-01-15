{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "gr" = "lsp_references";
      "<leader>ts" = "lsp_document_symbols";
      "<leader>fF" = "find_files";
      "<leader>ff" = "git_files";
      "<leader>fw" = "live_grep";
      "<leader><leader>" = "buffers";
      "<leader>fh" = "help_tags";
      "<leader>fo" = "oldfiles";
      "<leader>fd" = "diagnostics";
    };
  };
}
