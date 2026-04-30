function fish_right_prompt --description 'Write out the prompt'
	set -l last_status $status
	set -l normal (set_color normal)
	set -l status_color (set_color $ct_green)
	set -l cwd_color (set_color $ct_blue)
	set -l vcs_color (set_color $ct_lavender)
	set -l host_color (set_color $ct_yellow)
	set -l prompt_status ""
        
	# Since we display the prompt on a new line allow the directory names to be longer.
	set -q fish_prompt_pwd_dir_length
	or set -lx fish_prompt_pwd_dir_length 0
        
	# Color the prompt differently when we're root
	if functions -q fish_is_root_user; and fish_is_root_user
		if set -q fish_color_cwd_root
			set cwd_color (set_color $ct_red)
		end
	end
        
	# Color the prompt in red on error
	if test $last_status -ne 0
		set status_color (set_color $ct_red)
		set prompt_status $status_color $last_status "!" $normal
	end
        
	echo -ns $prompt_status ' ' $host_color (hostname) ' ' $cwd_color (string join / (prompt_pwd | string split /)[-3..-1]) $vcs_color (fish_vcs_prompt) $normal
end
