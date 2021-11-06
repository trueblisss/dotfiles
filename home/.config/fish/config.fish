#
#________/\\\\\_____________________/\\\_________        
# ______/\\\///_____________________\/\\\_________       
#  _____/\\\_______/\\\______________\/\\\_________      
#   __/\\\\\\\\\___\///___/\\\\\\\\\\_\/\\\_________     
#    _\////\\\//_____/\\\_\/\\\//////__\/\\\\\\\\\\__    
#     ____\/\\\______\/\\\_\/\\\\\\\\\\_\/\\\/////\\\_   
#      ____\/\\\______\/\\\_\////////\\\_\/\\\___\/\\\_  
#       ____\/\\\______\/\\\__/\\\\\\\\\\_\/\\\___\/\\\_ 
#        ____\///_______\///__\//////////__\///____\///__
#
# Configuration options for fish shell

# set ssh agent correctly
fish_ssh_agent

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# configure display
set -g theme_display_time                     yes
set -g theme_display_group                    no
set -g theme_display_git                      yes
set -g theme_display_virtualenv               yes
set -g theme_display_time_format              '+[%H:%M:%S]'

# config colours
set -g theme_color_time                       brcyan
set -g theme_color_user                       white
set -g theme_color_separator                  white
set -g theme_color_host                       brgreen
set -g theme_color_bracket                    white
set -g theme_color_normal                     white
set -g theme_color_error                      brred
set -g theme_color_superuser                  brred
set -g theme_color_path                       brcyan
set -g theme_color_rw                         white
set -g theme_color_virtualenv                 bryellow

set -g theme_prompt_char_normal               '$'
set -g theme_prompt_chat_superuser            '#'
set -g theme_prompt_char                      "$theme_prompt_chat_normal"

# git config
set -g __fish_git_prompt_char_branch_begin    '['
set -g __fish_git_prompt_char_branch_end      ']'
set -g __fish_git_prompt_color_branch_begin   white
set -g __fish_git_prompt_color_branch_end     white
set -g __fish_git_prompt_color_branch         bryellow

# cmd aliases
alias btw "neofetch"
alias l "ls -l"
alias la "ls -la"
alias wm-s "wmname LG3D"
alias wm-u "wmname bspwm"
alias virsh "virsh --connect qemu:///system"
alias fucking "sudo"
alias gib "paru -S"
alias yeet "paru -R"
alias img "tiv -a -r 0.5"

# add vue to path
set -x PATH ~/.npm-global/bin:$PATH

# if on tty1, launch startx automatically
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# load pyenv automatically
# status is-interactive; and pyenv init --path | source
# pyenv init - | source
# fish_add_path /usr/local/sbin
