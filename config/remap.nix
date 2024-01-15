{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Oil<CR>";
      mode = "n";
      options.desc = "explorer";
    }
    { 
      mode = "v"; 
      key = "J"; 
      action = ":m '>+1<CR>gv=gv"; 
      options.desc = "move highlighted block down";
    }
    { 
      mode = "v"; 
      key = "K"; 
      action = ":m '<-2<CR>gv=gv"; 
      options.desc = "move highlighted block up";
    }
    
    { 
      mode = "i"; 
      key = "jj"; 
      action = "<Esc>"; 
      options.desc = "escape from insert";
    }
    
    { 
      mode = "n"; 
      key = "J"; 
      action = "mzJ`z"; 
      options.desc = "concat down without cursor moving";
    }
    { 
      mode = "n"; 
      key = "<C-d>"; 
      action = "<C-d>zz"; 
      options.desc = "halfpage down centered";
    }
    { 
      mode = "n"; 
      key = "<C-u>"; 
      action = "<C-u>zz"; 
      options.desc = "halfpage up centered";
    }
    { 
      mode = "n"; 
      key = "n"; 
      action = "nzzzv"; 
      options.desc = "dont remember bruh";
    }
    { 
      mode = "n"; 
      key = "N"; 
      action = "Nzzzv"; 
      options.desc = "dont remember bruh";
    }
    { 
      mode = "x"; 
      key = "<leader>p"; 
      action = ''"_dP''; 
      options.desc = "paste without copying";
    }
    { 
      mode = [ "n" "v" ]; 
      key = "<leader>y"; 
      action = ''"+y''; 
      options.desc = "copy in sys clipboard";
    }
    { 
      mode = "n"; 
      key = "<leader>Y"; 
      action = ''"+Y''; 
      options.desc = "copy in sys clipboard";
    }
    
    { 
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = ''"_d''; 
      options.desc = "delete without copying"; 
    }
    { 
      mode = "n"; 
      key = "Q"; 
      action = "<nop>";
    }
    
    { 
      mode = "n"; 
      key = "<leader>s"; 
      action = '':%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>''; 
      options.desc = "substitute word";
    }
    { 
      mode = "n"; 
      key = "<leader>x"; 
      action = ":!chmod +x %<CR>"; 
      options.desc = "make file executable";
    }
    { 
      mode = "n"; 
      key = "<leader>tw"; 
      action = ":set wrap!<CR>"; 
      options.desc = "toggle wrap";
    }
  ];
}
