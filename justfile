rebuild-cayley:
  sudo nixos-rebuild --upgrade --flake ~/.config/#cayley switch --show-trace --option eval-cache false

build-fermat:
  nix build .#nixosConfigurations.fermat.config.system.build.isoImage --show-trace --option eval-cache false

rebuild-noether:
  nix run nix-darwin -- switch --flake ~/.config#noether switch --show-trace --option eval-cache false

clean-nix:
  (sudo nix-collect-garbage -d) && (nix store optimise) && (clear) && (fastfetch)

update:
  nix flake update ~/.config/
