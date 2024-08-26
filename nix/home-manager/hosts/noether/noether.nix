{ pkgs, config, inputs, lib, ... }: #NOETHER NIX!

{
    imports = [
      inputs.nix-colors.homeManagerModules.default
      inputs.nixvim.homeManagerModules.nixvim
    ];
    colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

    home = ( import ./home.nix { inherit pkgs config lib; } );

    programs = ( import ./programs.nix { inherit pkgs config lib; } );
}
