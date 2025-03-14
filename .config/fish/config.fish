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

# set ssh auth sock
set -gx SSH_AUTH_SOCK "/run/user/1000/yubikey-agent/yubikey-agent.sock"

# set starship config location
set -gx STARSHIP_CONFIG /home/kio/.config/starship/starship.toml

# enable starship theme
starship init fish | source

# aliases
alias neofetch "neofetch --ascii_distro arch_old --disk_show '/' '/mnt/kepler/' '/mnt/tesla/' --cpu_temp C --block_range -1 -1"
alias btw "neofetch"
alias l "ls -l"
alias la "ls -la"
alias md "mkdir -p"
alias wm-l "wmname LG3D"
alias wm-b "wmname bspwm"
alias img "tiv -a -r 0.5"
alias handbrake "hbc"
alias pf "pfetch"
alias gpg-enc "gpg --encrypt --sign --armor -r hi@kio.dev"
alias b2 "b2-linux"
alias gits "git status"
alias gitc "git checkout"

# Capybara tests
alias capy "bundle exec cucumber -p chrome -p mac-rc"

# yt-dlp
alias ytdl "yt-dlp -f bestvideo+bestaudio --merge-output-format mkv"

# yiffer-dl
alias ydl "python ~/Nextcloud/Development/yiffer-dl/ydl.py"

# init nvm
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# force tty colour
set -gx FORCE_COLOR 1

# init rbenv
status --is-interactive; and rbenv init - fish | source

# if on tty1, launch startx automatically
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec startx -- -keeptty
#    end
#end

# load pyenv automatically
# status is-interactive; and pyenv init --path | source
