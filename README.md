<pre>
_________/\\\_____________________________________/\\\\\________/\\\\\\________________________________        
 ________\/\\\___________________________________/\\\///________\////\\\________________________________       
  ________\/\\\____________________/\\\__________/\\\_______/\\\____\/\\\________________________________      
   ________\/\\\______/\\\\\_____/\\\\\\\\\\\__/\\\\\\\\\___\///_____\/\\\________/\\\\\\\\___/\\\\\\\\\\_     
    ___/\\\\\\\\\____/\\\///\\\__\////\\\////__\////\\\//_____/\\\____\/\\\______/\\\/////\\\_\/\\\//////__    
     __/\\\////\\\___/\\\__\//\\\____\/\\\_________\/\\\______\/\\\____\/\\\_____/\\\\\\\\\\\__\/\\\\\\\\\\_   
      _\/\\\__\/\\\__\//\\\__/\\\_____\/\\\_/\\_____\/\\\______\/\\\____\/\\\____\//\\///////___\////////\\\_  
       _\//\\\\\\\/\\__\///\\\\\/______\//\\\\\______\/\\\______\/\\\__/\\\\\\\\\__\//\\\\\\\\\\__/\\\\\\\\\\_ 
        __\///////\//_____\/////_________\/////_______\///_______\///__\/////////____\//////////__\//////////__
</pre>


Dotfiles are how you personalize your system and programs, these are mine! :)

I was tired of having everything unorganized, and slightly different on all my devices. That inspired me to upload my most common config files here, both to use when distro-hopping and in case anyone wanted to use my configs as starting points!

## What's inside

A lot. Check them out in the file browser above to see what components may work for you.

## Components

    bin/: Anything in bin/ will be added to $PATH and be made available everywhere.
    home/: Any files here are from my home directory.
    misc/*: Some subdirectories containing misc system files.

## Install

Run this:
```
git clone https://github.com/kiosion/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```
*( Work in progress, I'm adapting [holman's install script](https://github.com/holman/dotfiles/blob/master/script/bootstrap) to work for my setup and preferred shell. For now, you can simply manually move files into place :p )*
