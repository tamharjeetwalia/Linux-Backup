#if status is-interactive
# Commands to run in interactive sessions can go here

# Disables the default greeting
#set fish_greeting

# NNN
# export NNN_PLUG=
export NNN_FCOLORS='111111111011011111000101'
# set --export NNN_FIFO "/tmp/nnn.fifo"

# Run krabby(pokemon)/neofetch on start
function fish_greeting
#	neofetch
	krabby random -i
end

