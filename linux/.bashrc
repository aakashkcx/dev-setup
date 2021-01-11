# Aliases
alias ll='ls -AFhl'
alias lsl='ls -AFhl | less'

# Colors
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
MAGENTA="\[\e[35m\]"
CYAN="\[\e[36m\]"
WHITE="\[\e[37m\]"

# Prompt
# PS1="\u@\h \T \w\n$ "
# PS1="${RESET}${BOLD}\u@\h ${RESET}\T ${BOLD}\w\n${RESET}$ "
PS1="${RESET}${BOLD}${RED}\u@\h ${RESET}${WHITE}\T ${BOLD}${YELLOW}\w\n${RESET}$ "
