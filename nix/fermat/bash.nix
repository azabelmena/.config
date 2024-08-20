{ pkgs, ... }:

let shellAliases = import ../../home-manager/aliasrc.nix;
in
{
    enableCompletion = true;

    interactiveShellInit = ''
        sleep 0.1
        fastfetch

        set -o vi

        PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

        export KEYTIMEOUT=1
    '';

    inherit shellAliases;
}
