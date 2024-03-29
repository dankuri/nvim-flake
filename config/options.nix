{ config, ... }:
{
  config.options = {
    number = true;
    relativenumber = true;

    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    
    autoindent = true;
    smartindent = true;
    
    wrap = false;
    
    swapfile = false;
    backup = false;
    
    undofile = true;
    
    hlsearch = false;
    incsearch = true;
    
    termguicolors = true;
    
    scrolloff = 8;
    
    updatetime = 50;
  };
}
