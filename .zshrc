############# My alias #############
alias sshpi='ssh pi@flema.duckdns.org'
alias sshdebian='ssh fabian@debian.local'
alias update='brew update && brew upgrade'
alias pixel='emulator @Pixel_2_API_28'
alias tablet='emulator @Nexus_9_API_28'
alias emulators='emulator -list-avds'
alias coffee='caffeinate -t -d -i $1' 

# Remote Device Alias
rd() {
   adb tcpip 5555 && adb connect $1
}

############# Maven and Java config #############
MAVEN_HOME=/opt/apache-maven-3.6.3
PATH=$MAVEN_HOME/bin:$PATH

# JAVA 11
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home

# JAVA 8
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home

# Node 6

export PATH=$PATH:/opt/node-v6.17.1-darwin-x64/bin

############# Android and Flutter config #############
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/Library/Android/sdk/emulator"
export PATH="$PATH:$HOME/development/flutter/bin"

############# Integration Shell iterm #############
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

############# GIT INFO #################
# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for the prompt. PS1 synonym. Added time to prompt
NEWLINE=$'\n'
autoload -U colors && colors
prompt='%D{%H:%M:%S} %B%F{63}%2/%f%b %F{11}${vcs_info_msg_0_}%f${NEWLINE}%F{10}$%f '
