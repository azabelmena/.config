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
- `cauchy` ([Augustin-Louis Cauchy](https://ncatlab.org/nlab/show/Augustin-Louis+Cauchy))
    - An old Lenovo Ideapad I have lying around for tinkering and testing.
- `cayley` ([Arthur Cayley](https://mathshistory.st-andrews.ac.uk/Biographies/Cayley/))
    - A system76 Thelio desktop. This is my main machine, and sees the most
    upates.
- `fermat` ([Pierre de Fermat](https://www.britannica.com/biography/Pierre-de-Fermat))
    - Configurations for building a NixOS bootable recovery and installation media.
    - This is the most minimal configuration out of all of them.
- `lovelace` ([Ada Lovelace](https://www.britannica.com/biography/Ada-Lovelace))
    - This configuration is meant for KVM virtual machines using qemu.
    - This is second most minimal config out of all of them. This configuration
      is designed for the machine to be accessed through `ssh`.
    - Side note: Known as the first computer programmer, Ada was also a
      mathematician.
- `noether` ([Emmy Noether](https://www.britannica.com/biography/Emmy-Noether))
    - An Apple M2 MacBook Pro.
    - This is my current work machine for on the go, and sees the second most
      updates.

By the way, all my machines are named after mathematicians:
- `cayley` is named specifically after my favorite theorem.
    - Cayley's theorem: Every group is isomorphic to a subgroup of the symmetric
      group.
- The, name `noether` can refer to either Emmy Noether, or Max Noether
(Emmy's father); although I named my M2 MacBook specifically after Emmy.
- If you copy my (nix) configs, you do not need to adhere to the
mathematician naming scheme; although it would be neat if you did.
- Hopefully down the line I will acquire a framework laptop and name it one
of the following:
    - `hilbert` ([David Hilbert](https://en.wikipedia.org/wiki/David_Hilbert))
    - `sophie` ([Sophie Germaine](https://www.britannica.com/biography/Sophie-Germain))
    - `hypatia` ([Hypatia of Alexandria](https://en.wikipedia.org/wiki/Hypatia))
    - `agnesi` ([Maria Gaetana Agnesi](https://www.britannica.com/biography/Maria-Gaetana-Agnesi))
    - `weyl` ([Hermann Weyl](https://plato.stanford.edu/entries/weyl/))
- The names here are not capitalized (even though they should be) to be in
keeping with DNS hostname conventions
[(RFC1178)](https://datatracker.ietf.org/doc/html/rfc1178).

# What's Here?

Here you will find:

- My NixOS and Nix-Darwin configuration files, as well as the flake.nix and the
flake.lock files used to build them on different machines.
    - NixOS for machines with generic hardware.
        - i.e. `cayley`, `cauchy`, etc...
    - Nix-Darwin for Apple hardware and have a reproducible system on OSX.
        - i.e. `noether`.
        - Reproducibility here is limited given how locked down OSX is.
    - `sops-nix` files
        - For managing secrets (such as passwords and ssh keys) in a declarative
          way.
- Various home-manager `.nix` files for programs which include:
    - Vim
    - Neovim
    - Zsh and Bash
    - Kitty (a terminal emulator)
    - Hyprland
    - Waybar
    - Zathura
    - Rofi
    - Yabai and `skhd` (a window manager and hotkey daemon for OSX, respectively)
    - Many other programs (look through `config/home-manager/`)

- A folder of pictures (these are for storing wallpapers) and should not really
be considered as part of the configs.
- A .gitignore and this README.
    - These are just boilerplate and should also not be considered a part of the
    configs.

# What's The Goal?

The goal here is to create a repository which describes a given system on a
given machine. This system should be:
- Declaritive
    - Describe exactly what you want on the system, rather than telling the
      system what to do.
    - Files, settings and various other things should be declared.
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
            - `.config/home-manager/`
            - `.config/nix/`
        - There may be some configuration files that introduce state, and I
        plan on fixing them as I stumble upon them.

# A note for People Who Wish to Steal from This Repository.

The dotfiles here are primarly geared around `nix` and using `nix` to declare
actual configuration files. The actual configuration files for programs
here don't really exist (at least, they shouldn't), just the `nix` expressions
declaring them. If you don't have a `nix` based system (i.e. NixOS,
Nix-Darwnin, or just having the `nix` package manager installed), you could do
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
