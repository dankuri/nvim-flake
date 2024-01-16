{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "gr" = {
        action = "lsp_references";
        desc = "LSP: goto references";
      };
      "gd" = {
        action = "lsp_definitions";
        desc = "LSP: goto definitions";
      };
      "gI" = {
        action = "lsp_implementations";
        desc = "LSP: goto implementations";
      };
      "<leader>ts" = {
        action = "lsp_document_symbols";
        desc = "LSP: Telescope symbols";
      };
      "<leader>fF" = {
        action = "find_files";
        desc = "find all files";
      };
      "<leader>ff" = {
        action = "git_files";
        desc = "find git files";
      };
      "<leader>fo" = {
        action = "oldfiles";
        desc = "find old files";
      };
      "<leader>fw" = {
        action = "live_grep";
        desc = "find word";
      };
      "<leader><leader>" = {
        action = "buffers";
        desc = "find buffers";
      };
      "<leader>fh" = {
        action = "help_tags";
        desc = "find help";
      };
      "<leader>fd" = {
        action = "diagnostics";
        desc = "find diagnostics";
      };
      "<leader>tt" = {
        action = "resume";
        desc = "telescope resume";
      };
      "<leader>tp" = {
        action = "pickers";
        desc = "telescope pickers";
      };
    };
  };
}
