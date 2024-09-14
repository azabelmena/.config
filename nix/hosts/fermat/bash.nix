{ pkgs, config, ... }:
{
    enableCompletion = true;

    interactiveShellInit = ''
        sleep 0.1
        fastfetch
        alias clear="(clear) && (${pkgs.fastfetch}/bin/fastfetch)"

        set -o vi

        PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

        export KEYTIMEOUT=1
    '';
}
