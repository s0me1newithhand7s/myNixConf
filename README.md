<h1 align=center>myNixConf :snowflake:</h1>
<h4 align=center>my ultimate nixos configuration (my main config xd)!! </h4>

![240527_15-29-1716812997](https://github.com/s0me1newithhand7s/myNixConf/assets/117505144/16a4f43c-638c-47c7-a70f-86392e7534ad)


<hr/>
<br>
<br>

<h1 align=center> How to </h1> 
<p>Steps to migrate from your previous NixOS configuration to mine.</p>
<h3 align=center> firstly: </h3>

add **nix unstable channel** and **home-manager** if you haven't done it yet:
```shell
nix-channel --remove nixos
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixos
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```
<h3 align=center> secondly: </h3>

clone **this repo**:
```shell
git clone https://github.com/s0me1newithhand7s/myNixConf
```

<h3 align=center> thirdly: </h3>

at this point in your `/etc/nixos` you'll have `configuration.nix` and `harware-configuration.nix`. **backup it**.
```shell
mkdir /etc/nixbackup/
cp /etc/nixos/* /etc/nixbackup
```

<h3 align=center> fourthly: </h3>

now we rollin':
```shell
cd ~/myNixConf/nixos
```
for beggining you can edit `home.nix` and `users.nix` for creating *your* user. also don't forget to edit `password` option!
after this you can edit `host.modules/modules.d/networking.nix` and `flake.nix` to provide *your* hostname. 
now, open your previous `harware-configuration.nix`, if you forget, we store it in `/etc/nixbackup`, and use it as reference for `general.modules/modules.d/boot.nix`, `general.modules/modules.d/nixpkgs.nix`, `general.modules/modules.d/disks.nix` and `host.modules/modules.d/networking.nix`.
edit `host.modules/modules.d/dm.nix` and `wm.nix` or `de.nix` in same directory.
and you can add `*.nix`, with *your* services, like Steam, pipewire/pulseaudio and etc! just don't forget to globe them correcrtly in `host.modules/modules.nix`!

<h3 align=center> fifthly: </h3>

now we copy actual config:
```shell
rm /etc/nixos/*
cp -r ~/myNixConf/nixos/* /etc/nixos
```
 
<h3 align=center> sixthly: </h3>

we will check and correct all the mistakes, if there any of 'em:
```shell
nixos-rebuild dry-activate --flake /etc/nixos/.#hostname 
nixos-rebuild test --flake /etc/nixos/.#hostname
```
if there is anything wrong:

[Actual Wiki](https://wiki.nixos.org/) 

[MyNixOS, for options](https://mynixos.com/)

[NixOS search, also options](https://search.nixos.org/)

.. and if everything is good:

<h3 align=center> finally: </h3>

we build:
```shell
nixos-rebuild switch --upgrade-all --flake /etc/nixos/.#hostname
```
after this i STRONGLY recommend you to reboot.

<hr/>
<br>
<br>

# In case of errors / bugs / errors
## Openning Issue
how2:
1. **Your version of config, detailed.**;
2. **Your hardware.** i don't mind how, feel free to provide creative ways xD;
3. **Your edits in configs.** provide us (to me xd) what exactly you have edited and how.
4. **Error**. need to explain?
## Fixing
in case you have fixed your error please - help others. i hope you will understand.
and please don't just open issue and disappears. xd
### P.S
 * i will ingore **ANY** issue what won't be properly created (from now, even mine).

<hr/>
<br>
<br>

# Offtop or QnA
### Why did you put everything in `nixos` folder?
 - imho, this way you wont harm your `configuration.nix` while you editing mine. also this way i'm kinda preventing you from not backing up your working config.
### Is there any point of this whole project existing?
 - yes, and main one - to make my life easier. i have [multiple devices](https://pastebin.com/raw/kRSBxh3W) laying around, and much more PCs in my colledge. and writing `configuration.nix` every time i have need it is pain in butt. also, by creating this project, i've done my first big project with bugtracking, fixes and etc. this was my goal on 2024, so i hope i will work with this later on. xd
### Is it created for **FULL Reproducibility**?
 - no. i have no need in full reproducibility, bc most of my cases (right now) is create a machine that will work no matter what OS will be on it. with nixos i can achieve it with ease.
### Reasosns of `disko.nix` existing?
 - in case you'll use it as your first and only nixos config you can just edit `disko.nix` and run `nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko myNixConf/nixos/disko.nix` to automize partiotioning.
### I want to help you, but don't know how!
 - it's awesome! if you have any ideas how to improve (and not ruin my goals, read whole offtop again pls) this project - message me in matrix / discord / telegram! links in my bio.

