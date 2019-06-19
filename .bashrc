# Sandy's BASHRC file.

# DATE AND TIME
today=`date +%A`					# the weekday
day=`date +"%d %b %Y"`					# month date
time=`date +%T`						# time
h=`date +%H`
if [ $h -lt 12 ]; then					# greeting
  greeting='morning'					# morning or,
elif [ $h -lt 18 ]; then				# afternoon or,
  greeting='afternoon'					# evening
else
  greeting='evening'
fi

# GREETING
echo $(tput setaf 136)Good $greeting Sandy!$(tput sgr0)
echo $(tput setaf 136)Today is $today $day, the time is $time$(tput sgr0)  # day

# GIT INTERACTION
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
. ~/.git-completion.bash                                 # tab-complete
. ~/.git-prompt.sh                                       # git status in prompt
export GIT_PS1_SHOWDIRTYSTATE=1

# PROMPT CUSTOMISATION
PS1="\[$(tput setaf 32)\]\[$(tput bold)\]\u";           # user colour
PS1+="\[$(tput sgr0)\]"; 				# reset format
PS1+="\[$(tput setaf 8)\] at ";      			# @ colour
PS1+="\[$(tput setaf 2)\]\[$(tput bold)\]\h";           # host colour
PS1+="\[$(tput sgr0)\]";				# reset format
PS1+="\[$(tput setaf 8)\] in ";     			# @ colour
PS1+="\[$(tput setaf 9)\]\[$(tput bold)\]\W";           # directory colour
PS1+="\[$(tput sgr0)\]";				# reset format
PS1+='$(__git_ps1 " [%s]")';                            # git status
PS1+="\n";						# new line
PS1+="\[$(tput setaf 11)\]\[$(tput bold)\]-> \$ ";	# prompt symbol
PS1+="\[$(tput sgr0)\]";                      		# terminal color (reset)
export PS1;
