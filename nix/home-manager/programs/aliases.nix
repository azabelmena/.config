{ pkgs, config, ... }:
{
  # Listing
  clear = "(clear) && (${pkgs.fortune}/bin/fortune | ${pkgs.neo-cowsay}/bin/cowsay --random)";
  #clear="(clear) && (cat ${config.home.homeDirectory}/logo.txt)"; # sfw version of clear alias
  ls="${pkgs.eza}/bin/eza";
  bat="${pkgs.bat}/bin/bat --theme gruvbox-dark";    # Add bat alternative to less.

  vi = "nvim -u ${config.home.homeDirectory}/.config/nvim/init.lua";
  vim = "nvim -u ${config.home.homeDirectory}/.config/nvim/init.lua";

  zathura = "${pkgs.zathura}/bin/zathura --config-dir=${config.home.homeDirectory}/.config/zathura";

  ## ZSH
  history="history | less";
  starshiprc="vim ${config.home.homeDirectory}/.config/starship.toml";
  sourcezsh="source ${config.home.homeDirectory}/.config/.zshrc";

  ## Kitty terminal
  icat="${pkgs.kitty}/bin/kitty +kitten icat";

  #Just
  just="${pkgs.just}/bin/just -f ${config.home.homeDirectory}/.config/justfile";
}
