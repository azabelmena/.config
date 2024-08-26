{ inputs, ... }:
{
  extraSpecialArgs = { inherit inputs; };

  users = {
    alec = ( import ../../home-manager/hosts/noether/noether.nix );
  };

  useGlobalPkgs = true;
  useUserPackages = true;

}
