{ inputs, ... }:
{
  extraSpecialArgs = { inherit inputs; };

  users = {
    alec = ( import ../../home-manager/hosts/sophie/sophie.nix );
  };

  useGlobalPkgs = true;
  useUserPackages = true;

}
