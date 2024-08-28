{ inputs, config, ... }:
let
USER = config.users.users.alec.name;
in
{
  enable = true;

  user = "${USER}";

  taps = {
    "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
    "homebrew/homebrew-cask" = inputs.homebrew-cask;
    "homebrew/homebrew-core" = inputs.homebrew-core;
    "nikitabobko/homebrew-tap" = inputs.nikitabobko-tap;
  };

  mutableTaps = false;

}
