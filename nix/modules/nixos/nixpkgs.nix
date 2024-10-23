{ pkgs, lib, ... }:
{
  config = {
    allowBroken = false;
    allowUnfree = true;
  };
  hostPlatform = lib.mkDefault "x86_64-linux";
}
