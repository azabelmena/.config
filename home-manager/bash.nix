{pkgs, ...}:

let shellAliases = import ./aliasrc.nix;
in{
    enable = true;

    initExtra = ''
      set -o vi
      eval "$(starship init bash)" 2>/dev/null
    '';

    inherit shellAliases;
}
