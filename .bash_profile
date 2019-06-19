# Link to .bashrc file if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# added by Anaconda3 5.1.0 installer
# export PATH="/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

