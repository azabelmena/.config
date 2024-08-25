{ inputs, ... }:
{
  extraSpecialArgs = { inherit inputs; };

  users = {
    alec = ( import ../../home-manager/cayley.nix );
  };

  useGlobalPkgs = true;
  useUserPackages = true;

}
