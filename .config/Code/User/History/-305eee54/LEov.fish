#if status is-interactive
# Commands to run in interactive sessions can go here

# Disables the default greeting
#set fish_greeting

# NNN
export NNN_PLUG='j:autojump;d:dragdrop;f:fzcd'
export NNN_FCOLORS='c1e2da690060caf7c6d6abc4'
# BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
# export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
# set --export NNN_FIFO "/tmp/nnn.fifo"

# Run krabby(pokemon)/neofetch on start
function fish_greeting
#	neofetch
	krabby random -i
end

