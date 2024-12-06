{ pkgs, inputs, ... }:
let
  userTheme = "nord";
in
{
  imports = [ inputs.nix-colors.homeManagerModules.default ];
  colorScheme = inputs.nix-colors.colorSchemes.${userTheme};
}
