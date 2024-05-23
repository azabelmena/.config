{pkgs, ...}:

let shellAliases = ( import ./aliases.nix);
in{
    enable = true;

    initExtra = ''
      set -o vi
      eval "$(starship init bash)" 2>/dev/null
    '';

    inherit shellAliases;
}
