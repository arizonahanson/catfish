if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
	fish_config theme choose catppuccin-mocha --color-theme=dark
    set -g fish_key_bindings fish_vi_key_bindings
end
