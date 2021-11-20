if status is-interactive
    # Commands to run in interactive sessions can go here
end

set HISTTIMEFORMAT "%F %T "
set HISTCONTROL ignoredups

starship init fish | source
