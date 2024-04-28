{ pkgs, ... }:
{

  users.turing = {
    isNormalUser = true;
    hashedPassword = "";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      eza
      fastfetch
      kitty
      lynx
      manix
      neovim
      nmap
      starship
      tmux
      zsh
    ];

    openssh = {
      authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPF3kIluoKiCX45C1uIkp6axm5TSXvnj3ziu+hXjBF0U alec@cayley"
      ];
    };
  };

}
