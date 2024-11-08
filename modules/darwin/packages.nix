{ pkgs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
shared-packages ++ [
  dockutil
  spacebar
  shortcat
  # netsurf
  starfetch
  owofetch
  uwufetch
  octofetch
  nix-universal-prefetch
  ipfetch
  ghfetch

]
