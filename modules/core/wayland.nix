{ pkgs, ... }:
{
  programs.hyprland.enable = true;
  programs.thunar = {
    enable = true;
	  plugins = with pkgs.xfce; [
		  exo
		  mousepad
		  thunar-archive-plugin
		  thunar-volman
		  tumbler
  	];
  };
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  environment.systemPackages = with pkgs; [
    # xwaylandvideobridge
  ];
}
