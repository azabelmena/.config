rebuild-cayley:
  sudo nixos-rebuild --upgrade --flake ~/.config/#cayley --show-trace switch

rebuild-cauchy:
  sudo nixos-rebuild --upgrade --flake ~/.config/#cauchy --show-trace switch

rebuild-lovelace:
  sudo nixos-rebuild --upgrade --flake ~/.config/#lovelace --show-trace switch

rebuild-noether:
  nix run nix-darwin -- switch --flake ~/.config#noether switch --show-trace

clean-nix:
  (sudo nix-collect-garbage -d) && (nix store optimise) && (clear) && (fastfetch)

update:
  nix flake update ~/.config/
