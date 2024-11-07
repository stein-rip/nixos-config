{ pkgs, config, ... }:

 let
  githubPublicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINoOQYEXKP3qQiNri656fR1E9jIuWvLnUowGD/oAT8ID";
 in
{

   ".ssh/id_github.pub" = {
     text = githubPublicKey;
   };

  # Initializes Emacs with org-mode so we can tangle the main config
  ".emacs.d/init.el" = {
    text = builtins.readFile ../shared/config/emacs/init.el;
  };
}
