{

  checks = {
    verifyBuildUsers = true;
    verifyNixChannels = true;
    verifyNixPath = true;
  };

  defaults = {
    finder = {
      AppleShowAllExtensions = true;
      _FXShowPosixPathInTitle = true;
      CreateDesktop = false;
    };
    screencapture.location = "$HOME/Pictures/Screenshots/";

    dock.autohide = true;
  };

  keyboard = {
    enableKeyMapping = true;
    remapCapsLockToControl = true;
  };

  system.stateVersion = 4;

}
