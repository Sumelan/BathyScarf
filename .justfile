default:
  @just --list

[group('nh')]
switch:
  nh os switch -a

[group('nh')]
update:
  swich --update

[group('nh')]
clean:
  nh clean all --keep 5

[group('nh')]
test:
  nh os test

[group('github')]
lazy:
  lazygit

[group('github')]
gfetch:
  onefetch --number-of-file-churns 0 --no-color-palette

[group('github')]
add:
  git add --all

[group('github')]
pull:
  git pull

[group('github')]
clone:
  git clone

[group('flake')]
[working-directory:'modules/system']
editsystem:
  @$EDITOR .

[group('flake')]
[working-directory:'modules/home']
edithome:
  @$EDITOR .



