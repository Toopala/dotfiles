# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User spesific commands 
set -o vi
# User spesific aliases
alias runrfnd='/home/miikasaastamoinen/bin/run-rfund-cnsmr.sh'

# User specific functions
PINK="[35;80m"
WHITE="[37;80m"
CYAN="[36;80m"
RED="[31;80m"
BLUE="[34;80m"
GREEN="[32;80m"
ORANGE="[33;80m"
LIGHT_GREEN="[38;5;76m"
NONE="[33;0m"

REDBACK_BLACKTEXT="[41;30m"
CYANBACK_BLACKTEXT="[106;30m"
GREENBACK_BLACKTEXT="[42;30m"
REDBACK="[41m"

hg_branch() {
    branch=`hg branch 2> /dev/null`
    if [ "$branch" != "" ]; then
        echo -en "\033[33;0m on \033[35;80m$branch"

    else
	branch=`git branch 2> /dev/null|grep '*' | tr -d ' *'`

	if [ "$branch" != "" ]; then
	   echo -en "\033[33;0m on \033[35;80m$branch"
        fi						              
    fi
}
export PS1='\n\
\e${LIGHT_GREEN}\t\e${NONE} \
\e${NONE}\e${REDBACK_BLACKTEXT}MAC@\h\
\e${NONE}:\e${ORANGE}\w\
$(hg_branch)\e${NONE}\n$ '
