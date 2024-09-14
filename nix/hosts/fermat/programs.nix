{ pkgs, config, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  bash = ( import ./bash.nix { inherit pkgs config; } );
}
