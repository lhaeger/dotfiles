# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lhaeger/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( svn-fast-info macos z macports common-aliases extract gitfast sudo zsh-autosuggestions wd)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mcedit ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
unsetopt EXTENDED_HISTORY
HISTFILE=~/.bash_history

alias ls='ls -A --color=auto'
alias ll='ls -l'
alias .='source'
alias ..='cd ..'
alias ...='cd ../..'
alias less='less --follow-name'
alias e=exit
alias c=clear
alias h=history
alias hgrep='history | grep'
alias mac='export PATH=${PATH//\/opt\/local\/libexec\/gnubin:/}'
alias gnu='if [[ ! $PATH =~ "/opt/local/libexec/gnubin:" ]]; then export PATH="/opt/local/libexec/gnubin:$PATH" ; fi'
alias ldapdecode="perl -MMIME::Base64 -n -00 -e 's/\n //g;s/(?<=:: )(\S+)/decode_base64(\$1)/eg;print'"

#alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

alias grep='grep --colour=auto'
alias ssh='ssh -YCti /Users/lhaeger/Privat/lhaeger_2048.openssh'
alias scp='scp -Ci /Users/lhaeger/Privat/lhaeger_2048.openssh'
alias rsync='rsync -e "ssh -i /Users/lhaeger/Privat/lhaeger_2048.openssh"'
#alias ru='pushd ~/Documents/Repos; for wc in IAMTeam IAMRelease IAMDev/HTML IAMDev/AIE-* IAMDev/Java IAMDev/Misc Online-Repos/*; do [ -d "$wc/.svn" ] && svn update "$wc" && echo; done; popd'
alias ru='find /Volumes/Daten/Repos -name .svn -type d -exec echo \; -exec svn update {}/.. \;'
alias g='glances --disable-check-update'
alias hgrep='history | grep'
#alias diffmerge='/Applications/DiffMerge.app/Contents/MacOS/DiffMerge -nosplash'
alias pu='sudo port -v selfupdate && sudo port -vu upgrade outdated && sudo port -vN reclaim'
alias pl='port -v livecheck maintainer:lhaeger'
alias reloadCrashPlan='sudo launchctl unload /Library/LaunchDaemons/com.crashplan.engine.plist && sudo launchctl load /Library/LaunchDaemons/com.crashplan.engine.plist'
alias ldif-unwrap='perl -MMIME::Base64 -n -00 -e '"'"'s/\n +//g;s/(?<=:: )(\S+)/decode_base64($1)/eg;s/:: /: /g;print'"'"
alias ftpfs=curlftpfs
alias clock='watch -tn 1 "date | cut -d \  -f 4"'
alias wda='wd add'
alias wdl='wd list'

export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'
#export LESS=XFRaeiM # the XFR is important here: don't mess with the terminal!export LESS=-cex3M
export LESSOPEN="| /opt/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -RSM#27 --follow-name '

# bash-like cmd completion from history
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
bindkey "^[histrev" history-incremental-pattern-search-backward

# MacPorts
if [[ ! $PATH =~ "/opt/local/bin:/opt/local/sbin:" ]]; then export PATH="/opt/local/bin:/opt/local/sbin:$PATH"; fi

# Default to GNU coreutils
gnu

# Enable iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Enable VS Code integration
#sudo ln -sf "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /opt/local/bin/code
export EDITOR=mcedit

alias roleldif='ldapsearch -h sl3510.ead.dom -xD cn=AL0189,ou=Special,ou=Applications,o=base,c=de -w lilaBr8useistlekker -b o=base,c=de -s sub -o ldif-wrap=no -LLL "(&(objectClass=inetOrgPerson)(aieSAPRoleSchedule=*))" aieSAPRoleAssignments aieSAPRoleSchedule nrfAssignedRoles > /var/nds_backup/prod-sap-rolestats.ldif'
alias rolefilter='grep -E "^$|^(dn|aieSAP|nrf)"'
export SAPSYS0='R13CLNT011 \nI14CLNT011 \nR14CLNT011 \nR11CLNT011 \nW13CLNT001 \nQ99CLNT100 \nW11CLNT001 \nW14CLNT001'
export SAPSYS1='D99CLNT100 \nI14CLNT895 \nI20CLNT001 \nI70CLNT011 \nITMCLNT011 \nP20CLNT001 \nP70CLNT011 \nP99CLNT100 \nPBWCLNT001 \nPEHCLNT001 \nPPMCLNT001 \nPTMCLNT011 \nPTRCLNT001 \nQ20CLNT001 \nQ70CLNT011 \nQBWCLNT001 \nQEHCLNT001 \nQPMCLNT001 \nQTMCLNT011 \nQTRCLNT001 \nR11CLNT895 \nR14CLNT895'
alias rolestats='ls -lh /var/nds_backup/prod-sap-rolestats.ldif; for attr in aieSAPRoleSchedule aieSAPRoleAssignments nrfAssignedRoles; do echo "$attr:"; for sys in `echo -e "$SAPSYS0 \n$SAPSYS1"| sort`; do echo -ne "  $sys\t"; grep -cE "^$attr:.*$sys" /var/nds_backup/prod-sap-rolestats.ldif; done; echo; done'
alias test='for ldif in echo \$1; do echo $ldif; done '

#source /opt/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias topgrade='topgrade --disable pip3'

export PATH="$PATH:/usr/local/lib/platform-tools"