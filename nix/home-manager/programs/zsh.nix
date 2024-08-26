{ pkgs, ... }:

let
    shellAliases = ( import ./aliases.nix { inherit pkgs; });
in
  {

    package = pkgs.zsh;
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    autocd = false;
    dotDir = ".config";
    defaultKeymap = "viins";
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;

    initExtra = ''
        cd ~
        sleep 0.1
        ${pkgs.fortune}/bin/fortune | ${pkgs.neo-cowsay}/bin/cowsay --random

        bindkey -v

        autoload -U colors && colors
        PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

        eval "$(${pkgs.starship}/bin/starship init zsh)" 2> /dev/null # dump errors.

        PATH=$PATH:$HOME/scripts/

        export KEYTIMEOUT=1

        # Preferred editor for local and remote sessions
        if [[ -n $SSH_CONNECTION ]]; then
          export EDITOR='vim'
        else
          export EDITOR='vim'
        fi

        source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

        eval "$(ssh-agent -s)" &>/dev/null # dump output.
        ssh-add $HOME/.ssh/id_cayley 2> /dev/null
        ssh-add $HOME/.ssh/id_github 2> /dev/null
        ssh-add $HOME/.ssh/sig_github 2> /dev/null
    '';

    inherit shellAliases;
}
