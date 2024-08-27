{pkgs, config, ...}:

let
    shellAliases = ( import ./aliases.nix { inherit pkgs config; });
in{
    enable = true;

    initExtra = ''
      set -o vi
      eval "$(${pkgs.starship}/bin/starship init bash)" 2>/dev/null
    '';

    inherit shellAliases;
}
