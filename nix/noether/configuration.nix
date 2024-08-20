# Noether NIX!

{inputs, config, pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.settings = {
      experimental-features = ["nix-command" "flakes"];
  };

  users.users.alec = {
    name = "alec";
    home = "/Users/alec";
  };

  environment.systemPackages = with pkgs; [
    bat
    coreutils
    eza
    fastfetch
<<<<<<< HEAD
=======
    fortune
>>>>>>> parent of eca0d85 (Fixed bug)
    gcc
    git
    inkscape-with-extensions
    jq
    just
    kitty
    mpv
<<<<<<< HEAD
=======
    neo-cowsay
>>>>>>> parent of eca0d85 (Fixed bug)
    qbittorrent
    ripgrep
    skhd
    spacebar
    starship
    texlive.combined.scheme-full
    vifm
    vim-full
<<<<<<< HEAD
    yabai
=======
>>>>>>> parent of eca0d85 (Fixed bug)
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-vi-mode
  ];

  documentation.enable = true;

  fonts.fontDir.enable = true;

  system = {
    checks = {
      verifyBuildUsers = true;
      verifyNixChannels = true;
      verifyNixPath = true;
  };

    defaults = {
      finder = {
        AppleShowAllExtensions = true;
        _FXShowPosixPathInTitle = true;
        CreateDesktop = false;
      };

      screencapture.location = "/tmp/";

      dock.autohide = true;
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = true;
    };
  };

  environment.darwinConfig = "$HOME/.config/nix/noether/configuration.nix";

  services = {
    nix-daemon.enable = true;
<<<<<<< HEAD

    skhd = ( import ./services/skhd.nix { inherit pkgs; } );
    yabai = ( import ./services/yabai.nix { inherit pkgs; } );
=======
    skhd = ( import ./services/skhd.nix { inherit pkgs; } );
>>>>>>> parent of eca0d85 (Fixed bug)
  };

 security.pam.enableSudoTouchIdAuth = true;

  # nix.package = pkgs.nix;
  programs.zsh.enable = true;
  environment.loginShell = pkgs.zsh;

  nixpkgs.hostPlatform = "aarch64-darwin";

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;


  stylix = ( import ./stylix.nix { inherit pkgs; } );
}
