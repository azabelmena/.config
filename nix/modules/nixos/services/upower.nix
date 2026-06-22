{ pkgs, ... }:
{
  enable = true;
  package = pkgs.upower;

  percentageLow = 20;
  percentageCritical = 5;
  criticalPowerAction = "Hibernate";
}
