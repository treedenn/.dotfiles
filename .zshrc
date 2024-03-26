# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# Aliases
#

alias vim='nvim'
alias vi='nvim'
alias v='nvim'

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -v

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
#zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

bindkey '^@' autosuggest-accept

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

#
# Spaceship
#

SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
# hg             # Mercurial section (hg_branch  + hg_status)
# package        # Package version
  node           # Node.js section
  bun            # Bun section
# deno           # Deno section
# ruby           # Ruby section
# python         # Python section
# elm            # Elm section
# elixir         # Elixir section
# xcode          # Xcode section
# swift          # Swift section
# golang         # Go section
# perl           # Perl section
# php            # PHP section
# rust           # Rust section
# haskell        # Haskell Stack section
# scala          # Scala section
# kotlin         # Kotlin section
  java           # Java section
  lua            # Lua section
# dart           # Dart section
# julia          # Julia section
# crystal        # Crystal section
  docker         # Docker section
  docker_compose # Docker section
# aws            # Amazon Web Services section
# gcloud         # Google Cloud Platform section
# azure          # Azure section
# venv           # virtualenv section
# conda          # conda virtualenv section
# dotnet         # .NET section
# ocaml          # OCaml section
# vlang          # V section
# zig            # Zig section
# purescript     # PureScript section
# erlang         # Erlang section
# kubectl        # Kubectl context section
# ansible        # Ansible section
# terraform      # Terraform workspace section
# pulumi         # Pulumi stack section
# ibmcloud       # IBM Cloud section
# nix_shell      # Nix shell
# gnu_screen     # GNU Screen section
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
#  battery        # Battery level and status
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key
# }}} End configuration added by Zim install

# activate mise
eval "$(~/.local/bin/mise activate zsh)"

