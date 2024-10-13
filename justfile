upgrade:
  sudo nixos-rebuild --upgrade --flake github:azabelmena/.config/main switch --show-trace --option eval-cache false

rebuild:
  sudo nixos-rebuild --upgrade --flake ~/.config switch --show-trace --option eval-cache false

build-fermat:
  nix build .#nixosConfigurations.fermat.config.system.build.isoImage --show-trace --option eval-cache false

clean-nix:
  (sudo nix-collect-garbage -d) && (nix store optimise) && (clear) && (fastfetch)
