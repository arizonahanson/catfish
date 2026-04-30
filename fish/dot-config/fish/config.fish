if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    set -g fish_key_bindings fish_vi_key_bindings
    bind ctrl-f forward-char
    bind -M insert ctrl-f forward-char
end
