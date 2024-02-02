function l --wraps='eza -l -F --icons --hyperlink -a --group-directories-first -h --git-repos --total-size' --description 'Uses eza to list all files and directories with header and icons as hyperlinks. Checks for the total size also'
  eza -l --icons --hyperlink -a --group-directories-first -h --total-size $argv
        
end
