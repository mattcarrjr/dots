# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
 else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias delcache="sudo rm -r ~/Library/Caches/*"
#alias turnoffds="defaults write com.apple.desktopservices DSDontWriteNetworkStores true"
#alias turnonds="defaults write com.apple.desktopservices DSDontWriteNetworkStores false"
alias ez="nvim ~/.zshrc"
alias sz="source ~/.zshrc"
alias icat="kitty +kitten icat"
alias modaudio="cd /home/moduloserver/Modulo/audio"
alias modvisual="cd /home/moduloserver/Modulo/visual"
alias moddev="cd /home/moduloserver/Modulo/dev"
alias moddocs="cd /home/moduloserver/Modulo/docs"
alias modhbj="cd /home/moduloserver/HBJ"
alias modmusic="cd /home/moduloserver/Modulo/audio/music"
alias ssh="kitty +kitten ssh"
alias ls="lsd"
alias ll="lsd -l"
alias lk="lsd -Al"
alias llk="lsd -Alt"
alias blender="~/visual/blender3.5/./blender"
alias blenderlts="~/visual/blender3.6.0LTS/./blender"
alias nuke-nc="~/visual/Nuke14.0v4/./Nuke14.0 --nc"
alias cmstart="sudo service codemeter start"
alias fnon="echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode"
alias fnoff="echo 1 | sudo tee /sys/module/hid_apple/parameters/fnmode"
alias rendernode-win="xfreerdp /monitors:1 /multimon /v:192.168.18.103 /u:ModuloRenderCPU /p:XenEdo23tet%"
alias rendernode="xfreerdp /monitors:1 /multimon /v:192.168.18.112 /u:modulorender /p:RonanSY77"
alias server-logon="ssh moduloadmin@192.168.18.200"
alias openexr-viewer="/home/modulolinux/dev/openexr-viewer/build/./openexr-viewer"
alias ue52="/home/modulolinux/visual/UnrealEngine_5.2/Engine/Binaries/Linux/./UnrealEditor"
alias reboot-mvis="~/dev/scripts/./windowsboot.sh"
alias hserver="~/dev/scripts/./houdiniServerStart.sh"
alias ytdl="yt-dlp"
alias update-bc "~/dev/bandcamp-downloader/./bandcamp-downloader.py -d /home/moduloserver/Modulo/audio/music --format alac --verbose modulotx81z"
alias purge-ds="find . -name '.DS_Store' -type f -delete"

#Path to lsd
export PATH=/home/modulolinux/.cargo/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Syntax highlighting
source /home/modulolinux/dev/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# RenderMan environment variables
#export OCIO="/opt/pixar/RenderManProServer-25.2/lib/ocio/ACES-1.2/config.ocio"
export OCIO="/home/modulolinux/dev/Blender-ACES-Config/config.ocio"
export RMANTREE="/opt/pixar/RenderManProServer-25.2/"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:opt/pixar/RenderManProServer-25.1/lib/"

# Path to Homebrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/modulolinux/.local/bin:$PATH"

#Foundry License Paths
export FOUNDRY_LICENSE_FILE="/home/modulolinux/.local/share/Foundry/Tokens"

#OpenAI API Token
export OPENAI_API_KEY="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"
