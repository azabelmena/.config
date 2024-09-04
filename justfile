rebuild-cayley:
  sudo nixos-rebuild --upgrade --flake ~/.config/#cayley switch --show-trace --option cached-eval false

rebuild-cauchy:
  sudo nixos-rebuild --upgrade --flake ~/.config/#cauchy switch --show-trace --option cached-eval false

rebuild-lovelace:
  sudo nixos-rebuild --upgrade --flake ~/.config/#lovelace switch --show-trace --option cached-eval false

rebuild-noether:
  nix run nix-darwin -- switch --flake ~/.config#noether switch --show-trace --option cached-eval false

clean-nix:
  (sudo nix-collect-garbage -d) && (nix store optimise) && (clear) && (fastfetch)

update:
  nix flake update ~/.config/
