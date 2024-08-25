{ inputs, ... }:
{
  extraSpecialArgs = { inherit inputs; };

  users = {
    alec = ( import ../../home-manager/hosts/cayley/cayley.nix );
  };

  useGlobalPkgs = true;
  useUserPackages = true;

}
