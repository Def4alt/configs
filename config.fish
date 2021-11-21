if status is-interactive
    # Commands to run in interactive sessions can go here
end

set HISTTIMEFORMAT "%F %T "
set HISTCONTROL ignoredups
set -gx EDITOR nvim
set -gx BROWSER /usr/bin/brave

starship init fish | source
