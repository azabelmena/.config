{
  # Listing
  #clear="clear && fastfetch"; # continue to flex.
  clear = "(clear) && (fortune | cowsay --random)";
  ls="exa";
  lf="ranger";
  bat="bat --theme gruvbox-dark";    # Add bat alternative to less.

  vi = "nvim -u ~/.config/nvim/init.lua ";
  vim = "nvim -u ~/.config/nvim/init.lua ";

  ## ZSH
  history="history | less";
  starshiprc="vim ~/.config/starship.toml";
  sourcezsh="source ~/.config/.zshrc";

  ## Kitty terminal
  icat="kitty +kitten icat";

  #Just
  just="just -f ~/.config/justfile";
}
