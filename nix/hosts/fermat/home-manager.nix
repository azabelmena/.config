{ inputs, ... }:
{
  extraSpecialArgs = { inherit inputs; };

  users = {
    alec = ( import ../../home-manager/hosts/fermat/fermat.nix );
  };

  useGlobalPkgs = true;
  useUserPackages = true;

}
