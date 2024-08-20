{pkgs, ... }:
{
  sddm = {
    enable = true;
    theme = "${import ./sddm.nix { inherit pkgs; }}";
    autoNumlock = false;
  };
}
