{ pkgs, inputs, ... }:
let
  userTheme = "everforest-dark-hard";
in
{
  imports = [ inputs.nix-colors.homeManagerModules.default ];
  colorScheme = inputs.nix-colors.colorSchemes.${userTheme};
}
