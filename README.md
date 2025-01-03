<p align="center">
  <b>azabelmena/Dotfiles</b><br />
  <span align="center">Declarative, Reproducible, and Stateless system
  configurations for NixOS and Nix-Darwin.</span>
</p>

# A Nice Warm Welcome.

Welcome to my dotfiles repository. What we have here are NixOS and Nix-Darwin
configuration files, and dotfiles that I have declared in the nix language for
different machines. The machines included
here are:
- `cayley` ([Arthur Cayley](https://mathshistory.st-andrews.ac.uk/Biographies/Cayley/))
    - A system76 Thelio desktop. This is my main machine, and sees the most
    upates.
- `sophie` ([Sophie Germaine](https://www.britannica.com/biography/Sophie-Germain))
    - A Framework laptop 16.
    - This is my current work machine for on the go.
        - Considering the configs for this machine shouldn't differ too much
          from `cayley`'s, it's update cycles will (mostly) coincide with those
          of `cayley`, despite being my main machine when on the go.
- `fermat` ([Pierre de Fermat](https://www.britannica.com/biography/Pierre-de-Fermat))
    - Configurations for building a NixOS bootable recovery and installation media.
    - This is the most minimal configuration out of all of them; since it's only
      meant to be used in a live-boot environment from usb.
        - Being that this configuration is meant only for live-boot
          environments, it is somewhat disconnected from the rest of the
          modules.

By the way, all my machines are named after mathematicians:
- `cayley` is named specifically after my favorite theorem.
    - Cayley's theorem: Every group is isomorphic to a subgroup of the symmetric
      group.
- If you copy my (nix) configs, you do not need to adhere to the
mathematician naming scheme; although it would be neat if you did.
- Sophie Germaine was a french mathematician who used a male pen name
"Le Blanc" in her correspondences with Joseph-Louis Lagrange. This is the most
notable thing she is famous for, but I think more emphasis should be placed on
her contributions to number theory; considering she made significant
contributions to Fermat's last theorem.
- Pierre de Fermat's claim to fame is in Fermat's Last
Theorem[](https://www.britannica.com/science/Fermats-last-theorem). He
specifically wrote, after stating the claim that "I have discovered a truly
remarkable proof, but this margin is too small to contain it." This theorem had
stumped mathematicians for almost 400 years until 1993, where [Andrew
Wiles](https://www.britannica.com/biography/Andrew-Wiles) proved it.
- The names here are not capitalized (even though they should be) to be in
keeping with DNS hostname conventions
[(RFC1178)](https://datatracker.ietf.org/doc/html/rfc1178).

# What's Here?

Here you will find:

- My NixOS and Nix-Darwin configuration files, as well as the flake.nix and the
flake.lock files used to build them on different machines.
    - NixOS for machines with generic hardware.
        - i.e. `cayley`, `cauchy`, etc...
- Various home-manager `.nix` files for programs which include:
    - Vim
    - Neovim
    - Zsh and Bash
    - Kitty (a terminal emulator)
    - Hyprland
    - Waybar
    - Zathura
    - Rofi
    - homebrew for OSX as well as other OSX specific software.
    - Many other programs (look through `nix/home-manager/<nix-darwin/nixos>/programs`)
- A .gitignore and this README.
    - These are just boilerplate and should also not be considered a part of the
    configs.

# Flake structure
I have set up the following structure for managing all my machine:

```c
/
├── nix/
│   ├── home-manager/
│   │   ├── hosts/
│   │   │   ├── machine 1
│   │   │   │   └── machine specific home-manager files and directories.
│   │   │   ├── machine 2
│   │   │   .
│   │   │   .
│   │   │   .
│   │   │   └── machine n
│   │   │
│   │   └── programs/
│   │       └── home-manager program files and directories.
│   ├── hosts/
│   │   ├── machine 1
│   │   │   └── machine specific files and directories.
│   │   ├── machine 2
│   │   .
│   │   .
│   │   .
│   │   └── machine n
│   │
│   └── modules/
│       ├── nix-darwin
│       │   └── modules and directories specific to nix-darwin.
│       └── nixos
│           └── modules and directories specific to nixos.
│
├── flake files (flake.nix && flake.lock)
├── Repository files (.gitignore, README.md, and LICENSE
└── Extraneous files (not necessarily needed for the configs).
```

# What's The Goal?

The goal here is to create a repository which describes a given system on a
given machine. This system should be:
- Declaritive
    - Describe exactly what you want on the system, rather than telling the
      system what to do.
    - Files, settings and various other things should be **declared**. Nothing
      should be done imperatively if you can help it.
    - This is fundamentally how the `nix` language works.
- Reproducible
    - It can be built on many different machines, and give the same programs and
    configurations according to a given specification.
    - Each build should have exactly the same versions of programs from a given
    specification.
- Stateless
    - The system described should only depend on the configuration files
    specified, and not on any *outside* state.
        - Think `/etc/`, or `~/.local/` or `~/.config/some-program-directory`.
        - It should only depend on the following:
            - `flake.nix`
            - `flake.lock` (which you can update at your own risk)
            - `.config/nix/`
        - There is just file (for the `just` program), but this can be
          disregarded if you don't plan on using `just`.

# A note for People Who Wish to Steal from This Repository.

The dotfiles here are primarly geared around `nix` and using `nix` to declare
actual configuration files. The actual configuration files for programs
here don't really exist (at least, they shouldn't), just the `nix` expressions
declaring them. If you don't have a `nix` based system (i.e. NixOS,
Nix-Darwin, or just having the `nix` package manager installed), you could do
one of the following:
1. You could comb through the individual `.nix` files, and reverse enginner and
retrofit the configs to your own configuration files (I do not recomend this).
2. You could contact me and ask for the individual config files.
    - i.e. you ask for my `.vimrc`, and I send you the `.vimrc` that was generated
    in my nix store (this is perhaps the most sane option).
3. You could, install the `nix` package manager, Nix-Darwin (if you have a mac),
or you could just switch over completely to NixOS.
    - If you're new to `nix`, you will have to do some reading, especially on
    `nix` flakes.
    - Switching to NixOS on Apple hardware is ill-advised; I recommend
    Nix-Darwin for this.
    - I highly recomend option 3 (I cannot guarantee your sanity).

I also use [sops-nix](https://github.com/Mic92/sops-nix) to manage my secrets
such as user passwords and the like. The secrets themselves are not part of the
repository for obvious opsec reasons. Now, if you do not plan on using
`sops-nix` for secrets management, you can disregard anything in the files
mentioning sops, and replace it with what you see fit. If you do plan on using
`sops-nix`, take note that the secrets declared in this repository depend on an
outside directory, and you should follow suit. You should also read up on how to
set up `sops` secret management. Emergent Mind has a good tutorial on setting up
`sops` and `sops-nix` on NixOS
[here](https://unmovedcentre.com/posts/secrets-management/), and it's worth a
look if you plan on using it.
    - You might be wondering whether or not depending on an outside directory
      viaolates the goal of statelessness of the configs, and the answer is:
      yes, it does. It is however justified, and a necessary evil in this case.
    - The lesson here I guess is that if you're going to introduce state into
      your configs, it should be for a good and justified purpose.
    - Funny enough, I had an encrypted secrets file commmited to this repo, and
      you can find it in the history, but there's nothing useful there since
      I've already rotated the keys used to encrypt it.

# Finally.
Feel free to steal my dots, the repository is public for a reason.

# P.S.
If for some reason these configs violate the goals of achieving Declarability,
Reproducability, and Statelessness, please let me know. You can do this by
opening an issue on github.

# P.P.S
This repository only includes files in the `.config` direcroty, and is actually
the new version of the much older `Dotfiles` directory (now archived). All the
old commit history from `Dotfiles` is lost here, but can be found in the
archive. If for any reason you want to roll back to an old version of my
configuration I was using before I made this repo, please look in
`Dotfiles`.
