{ pkgs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
shared-packages ++ [
  dockutil
  spacebar
  shortcat
  # netsurf
  starfetch
  octofetch
  ipfetch
  ghfetch

]
