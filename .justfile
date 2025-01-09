default:
  @$EDITOR .justfile

alias lg := lazy

# Build and activate the new configuration, and make it the boot default.
[group('nh')]
switch:
  nh os switch

# Update flake inputs before building specified configuration.
[group('nh')]
update:
  nh os switch --update

# Cleans root profiles and calls a store gc.
[group('nh')]
clean:
  nh clean all --keep 5

# Build and activate the new configuration.
[group('nh')]
test:
  nh os test

# Enter a Nix REPL with the target installable.
[group('nh')]
repl:
  nh os repl

# lazygit.
[group('github')]
lazy:
  lazygit

# Onefetch.
[group('github')]
gfetch:
  onefetch --number-of-file-churns 0 --no-color-palette

# Updates the index using the current content found in the working tree.
[group('github')]
add:
  git add --all

# Incorporates changes from a remote repository into the current branch.
[group('github')]
pull:
  git pull origin main

# Edit flake.nix.
[group('flake')]
flake:
  @$EDITOR flake.nix

# Edit hyprland.
[group('flake')]
hypr:
  @$EDITOR modules/home/programs/wayland/hyprland

# Edit xdg.
[group('flake')]
xdg:
  @$EDITOR modules/home/terminal/programs/xdg

# Edit Rei.
[group('flake')]
Rei:
  @$EDITOR hosts/Rei

# Edit Rin.
[group('flake')]
Rin:
  @$EDITOR hosts/Rin
