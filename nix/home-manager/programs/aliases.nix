{ pkgs, ... }:
{
  # Listing
  #clear="clear && fastfetch"; # continue to flex.
  clear = "(clear) && (${pkgs.fortune}/bin/fortune | ${pkgs.neo-cowsay}/bin/cowsay --random)";
  ls="${pkgs.eza}/bin/eza";
  lf="${pkgs.ranger}/bin/ranger";
  bat="${pkgs.bat}/bin/bat --theme gruvbox-dark";    # Add bat alternative to less.

  vi = "nvim -u ~/.config/nvim/init.lua";
  vim = "nvim -u ~/.config/nvim/init.lua";

  ## ZSH
  history="history | less";
  starshiprc="vim ~/.config/starship.toml";
  sourcezsh="source ~/.config/.zshrc";

  ## Kitty terminal
  icat="${pkgs.kitty}/bin/kitty +kitten icat";

  #Just
  just="${pkgs.just}/bin/just -f ~/.config/justfile";
}
