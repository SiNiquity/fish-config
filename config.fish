if status is-interactive
    # Commands to run in interactive sessions can go here

    # Rust environment
    fish_add_path -g $HOME/.cargo/bin/

    # Fix issue preventing use of GPG signing
    # https://github.com/fish-shell/fish-shell/issues/6643
    set -gx GPG_TTY (tty)

    # Start tmux if not already started
    tmux ls &> /dev/null
    if test "$status" != 0
        # Unable to list sessions, go ahead and start
        tmux
    end
end
