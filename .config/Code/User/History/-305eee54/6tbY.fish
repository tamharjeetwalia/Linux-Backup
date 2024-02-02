#if status is-interactive
# Commands to run in interactive sessions can go here

# Disables the default greeting
#set fish_greeting

# ************* NNN START***************
export NNN_PLUG='j:autojump;c:fzcd;o:fzopen;'
jump shell fish | source
export NNN_FCOLORS='c1e2da690060caf7c6d6abc4'
# BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
# Rename this file to match the name of the function
# e.g. ~/.config/fish/functions/n.fish
# or, add the lines to the 'config.fish' file.

function n --wraps nnn --description 'support nnn quit and change directory'
    # Block nesting of nnn in subshells
    if test -n "$NNNLVL" -a "$NNNLVL" -ge 1
        echo "nnn is already running"
        return
    end

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "-x" from both lines below,
    # without changing the paths.
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command function allows one to alias this function to `nnn` without
    # making an infinitely recursive alias
    command nnn $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end

# ***************END NNN*****************

# ***************Aliases******************
function tai --wraps='./Desktop/tai/target/release/tai' --description 'Terminal Ascii image'
   ./Desktop/tai/target/release/tai $argv
        
end


function l --wraps='eza -l -F --icons --hyperlink -a --group-directories-first -h --git-repos --total-size' --description 'Uses eza to list all files and directories with header and icons as hyperlinks. Checks for the total size also'
  eza -l --icons --hyperlink -a --group-directories-first -h --total-size $argv
        
end
# ***************Aliases END******************


# Run krabby(pokemon)/neofetch on start
function fish_greeting
#	neofetch
	krabby random -i -s
end

