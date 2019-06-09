export SCALA_HOME=/Users/cguntur/tools/scala
export M2_HOME=/Users/cguntur/Tools/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin:$SCALA_HOME/bin
export PATH=$PATH:/Users/cguntur/Tools/scripts

BLACK="\[\033[0;30m\]"
DARKGRAY="\[\033[1;30m\]"
BLUE="\[\033[0;34m\]"
LIGHTBLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHTGREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
LIGHTCYAN="\[\033[1;36m\]"
RED="\[\033[0;31m\]"
LIGHTRED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHTPURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
LIGHTGRAY="\[\033[0;37m\]"
WHITE="\[\033[1;37m\]"

alias firefoxp='firefox -private'
alias la='ls -la'
alias ll='ls -last'
alias path='echo -e ${PATH//:/\\n}'
## get rid of command not found ##
alias up='cd ..'
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias jdk7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7` && export PATH=$JAVA_HOME/bin:$PATH; java -version"
alias jdk8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8` && export PATH=$JAVA_HOME/bin:$PATH; java -version"
alias jdk9="export JAVA_HOME=`/usr/libexec/java_home -v 9` && export PATH=$JAVA_HOME/bin:$PATH; java -version"
alias jdk10="export JAVA_HOME=`/usr/libexec/java_home -v 10` && export PATH=$JAVA_HOME/bin:$PATH; java -version"
alias jdk11="export JAVA_HOME=`/usr/libexec/java_home -v 11` && export PATH=$JAVA_HOME/bin:$PATH; java -version"

PS1="\[\033[0;36m\][$(pwd )] \033[0m\]\n\$ "
PS1="$PURPLE[$(date '+%a, %Y-%b-%d')] $LIGHTCYAN[$( pwd )] \033[0m\]\n$ "
PS1="$LIGHTRED[\u] $YELLOW[$(date '+%a, %Y-%b-%d')] $CYAN[\w] \033[0m\]\n$ "

# set and change java versions
function setjdk() {  
  if [ $# -ne 0 ]; then  
    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'  
    if [ -n "${JAVA_HOME+x}" ]; then  
      removeFromPath $JAVA_HOME  
    fi  
    export JAVA_HOME=`/usr/libexec/java_home -v $@`  
    export PATH=$JAVA_HOME/bin:$PATH  
  fi  
}

removeFromPath () {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

