# conf.nix
My ultimate nixos configuration (still it testing)!!

# How to pull
(must be executed as `root`)

firts of all - add **nix unstable channel**:
```shell
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixos
``` 
senodly:
```shell
git clone https://github.com/s0me1newithhand7s/conf.nix
```
there you'll have **MY VERSION** of config. edit it to use, yes, it *is* important. 
to do this just use your text editor, and change:
 - hostname in `flake.nix` and `desktop.nix` / `server.nix`; 
 - username in `users.nix` and `home.nix`;
 - add your prefered WM or DE in `WM.nix` or `DE.nix` respectively. use https://nixos.wiki/ to find properly and correctly install WM or DE;
 - according to your HW use `amd.nix` or `nvidia.nix`. there is plans for `intel.nix` but i don't have intel GPU;
check if there is **hardware-configuration.nix** in your system. don't forget to made proper backup of your config, and properly test created config with `nixos-rebuild test --flake /etc/nixos/.#hostname` where `hostname` is your edited hostname
P.S.
   i really recommend to edit `server.nix` or `desktop.nix` bc main purpose of this configs is *being some kind of example how nix and nixos can be configured and work*.

# How to use
after *triple* checking everything and running `nixos-rebuild test --flake /etc/nixos/.#hostname` and resiving no errors feel free to:
```shell
nixos-rebuild switch --upgrade --flake /etc/nixos/.#hostname
```
and.. congrats! now you use mine vision of nix config. xd

# In case of errors / bugs / errors
There is three steps:
## Bugtracking
**Firstly**: Did you triple checked everything? This is not a regular config, some parts can contain errors, that caused by you and me. my work to test mine config, your - to test yours. 
**Secondly**: try to find proper manuals on wiki or github / gitlab page in case it not mine syntaxis error. i will try to help with navigation, but not with config.
## Openning Issue
how2:
1. **Your version of config, detailed.** something like: **desktop.nix, amd.nix , de.nix**;
2. **Your hardware.** i don't mind how, feel free to provide creative ways xD;
3. **Your edits in configs.** provide us (to me xd) what exactly you have edited and how.
4. **Error**. need to explain?
## Fixing
in case you have fixed your error please - help others. i hope you will understand.
and please don't just open issue and disappears. xd
### P.S
 * i will ingore **ANY** issue what won't be properly created (from now, even mine).


