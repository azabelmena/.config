{
    dot="/run/current-system/sw/bin/git --git-dir=$HOME/ --work-tree=$HOME/";

    # System
    suspend="systemctl suspend";
    hibernate="systemctl hibernate";

    # Listing
    clear="clear && fastfetch"; # continue to flex.
    ls="exa";
    bat="bat --theme gruvbox-dark";    # Add bat alternative to less.

    # Fetching programs

    vi = "nvim";
    vim = "nvim";
    vifmrc="vim ~/.config/vifm/vifmrc";

    ## ZSH
    history="history | less";
    starshiprc="vim ~/.config/starship.toml";
    sourcezsh="source ~/.config/.zshrc";

    ## Kitty terminal
    icat="kitty +kitten icat";

    ##
    scriptrc="vim ~/scripts/";

    ##zathura
    zathurarc="vim ~/.config/zathura/zathurarc";

    #nixos
    nixrc="vim ~/.config/nix/";
    homerc="vim ~/.config/home-manager/";
    flakerc="vim ~/.config/flake.nix";
    nix-shell="nix-shell --command 'zsh'";

    #ssh
    sshrc="vim ~/.ssh/config";
}
