<h1 align=center>myNixConf. ❄️</h1>

![240706_12-42-1720258920](https://github.com/s0me1newithhand7s/myNixConf/assets/117505144/15ae1a67-5e63-4333-a0ab-c948e63d7d70)


<h2 align=center>Little about this project. ❄️</h2>

> [!NOTE] 
> NixOS is not like any other Linux distributive. Declarative, Reproducible, Immutable and Atomic - this OS is another whole world, world full of wonders. ✨

* I've started using NixOS from January of 2024, and since then I've had itch to make something usefull for Nix community and NixOS in general. After 3 months I've came to idea of creating somehow not-private but yet usable NixOS configuration, that will be **more readable** and **easier to understand** for noobs (or newbiets xd).
* With this I've started dive into Nix, read more and more, find wonderful peoples inside this awesome community, learn more from them and with them. I've bringed few new users, I've helped some newbiets, and I proud of myself.
* But we don't end here! I'm polishing my configuration as much as I can, and hope that it's will help **you** start your journey in NixOS ❄️.


<h2 align=center>Installation of this project. ❄️</h2>

> [!WARNING]
> This is **NixOS** only repository and does not suitable for non-NixOS systems with Nix package manager, even tho `flake.nix` have `nixGL` and `nix-darwin`!
> In case you'll need **only** flake, home-manager stuff, or disko - `wget` / `curl` it!

### There is 2 ways:

<details><summary>With 1st installation:</summary>

   1. Enter `nix-shell` with your desire text editor and git.
   2. Clone this repo!
   3. `cd` into repo directory.
   4. Edit `disko.nix`, more about disko [here](https://github.com/nix-community/disko). 🪩
   5. Run `nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko disk.nix` to partition your disks!
   6. Mount disks, I hope this isn't hard part for you.
   7. Now `nixos-generate-config --root /mnt`
   8. Open new terminal / tty session or use tmux, you'll need to copy some info from `hw-conf.nix` that nixos generates.
   9. Paste 'em inside new configuration's modules.
   10. Configure existing modules according to your needs.
   11. Add new modulse in case you'll find them necessary.
   12. Edit `flake.nix`, `home.nix` and delete `disko.nix`, with unused modules.
   13. Triple-check everything.
   14. And now we roll! Remove **files** inside generated `/mnt/etc/nixos`, not the directory itself.
   15. Move new configuration inside `/mnt/etc/nixos`.
   16. And you did it! After `nixos-install --flake /mnt/etc/nixos/.#hostname` and debugging some rookie mistakes you'll find youself with fresh shiny NixOS ❄️! 

</details>

<details><summary>..or you can migrate from existing NixOS configuration:</summary>

   1. Enter `nix-shell` with your desire text editor and git.
   2. Clone this repo!
   3. `cd` into repo directory.
   5. Open new terminal, we need to copy your existing configuration from `/etc/nixos`.
   6. But before transition, **backup** existing configuration, `mkdir /etc/nixbackup` and `cp -r /etc/nixos /etc/nixbackup`.
   7. Open your existing configuration.
   8. Paste needed options inside new configuration's modules.
   9. Configure existing modules according to your needs.
   10. Add new modulse in case you'll find them necessary.
   11. Edit `flake.nix`, `home.nix` and delete `disko.nix`, with unused modules.
   12. Triple-check everything.
   13. Delete existing files insode `/etc/nixos`.
   14. Move new configuration inside `/etc/nixos`.
   15. Use `nixos-rebuild test --flake /etc/nixos/.#` for debbugging!
   16. After that - `nixos-rebuild boot --flake /etc/nixos/.# --upgrade-all` and reboot into your new NixOS ❄️!

</details>

<br>

<h2 align=center>Usefull links. ❄️</h2>

[Actual Wiki](https://wiki.nixos.org/), as nixos.wiki is now deparced.

[MyNixOS](https://mynixos.com/) and [NixOS Search](https://search.nixos.org/) basically same, but inside MyNixOS exist options like `home-manger`.

[Community page](https://nixos.org/community/). REALLY nice ppls exist there.

<br>

<h2>Special thanks to..</h2>

[TheMaxMur](https://github.com/themaxmur). This is funny how I bringed him in NixOS, and he became nixpkgs contributor, created actually [good config](https://github.com/TheMaxMur/NixOS-Configuration). And he helps me alot, not only with NixOS config.

[Askhat](https://github.com/aski425). Dude still listen to my schizo rave and tests my crazy ideas. Even forked me. XD

[Kotudemo](https://github.com/kotudemo). He's like "i ain't do this" and creating own way. Also he's tested my first attemps, and now kotu is owning he's own repo with he's own config. And I'm helping him. :D

.. and to **you**. If you use my NixOS config - that means that I've spent time not in vain. You can fork it and gimme a **star** ⭐ in case you find yourself grateful.
