# [[file:../../org/03_Resources/config/fish/20230812T085516--dot-fish__dotfiles.org::*config.fish][config.fish:1]]
# set -gx LANG ko_KR.UTF-8
# set -x TERM screen-256color
set -Ux SHELL /Users/mnml/.nix-profile/bin/fish
# set -x JAVA_HOME (/usr/libexec/java_home) # https://superuser.com/questions/1401673/how-to-set-a-specific-version-of-java-as-java-home-in-fish-in-macos
# set -x CACHIX_AGENT_TOKEN eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxODZjNjhkOC1jZjBlLTRhMGUtODJhMy03ZTJkZDYzN2Q0MDYiLCJzY29wZXMiOiJhZ2VudCJ9.FvTvluRI1tXOCp0MZ1nX0RQzUD9HKtmrqpYJ55Jgg2E
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set EDITOR vim
# set -x ALTERNATE_EDITOR ""
# set -x EDITOR "nvim" # "emacsclient -t"
# set -x VISUAL "nvim" # "emacsclient -c -a emacs"
# alias e $EDITOR

set -x BAT_THEME GitHub
# set -x NODE_VERSION_PREFIX=v
# set -x NODE_VERSIONS=~/.nvm/versions/node
set -x NODE_OPTIONS --max_old_space_size=4096
# [[file:20230812T085516--dot-fish__dotfiles.org::path][path]]
fish_add_path -mP ~/.config/emacs/.local/cache/share/eclipse.jdt.ls/bin/
fish_add_path -mP /usr/local/opt/grep/libexec/gnubin
fish_add_path -mP /home/im7696122/.local/bin
fish_add_path -mP $HOME/go/bin
fish_add_path -mP ~/.nimble/bin
fish_add_path -mP ~/.cargo/bin
fish_add_path -mP /usr/libexec

# [[file:20230812T085516--dot-fish__dotfiles.org::doom@path][doom@path]]
fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/org/cask/bin
# doom@path ends here
# 
# 
# path ends here
# [[file:20230812T085516--dot-fish__dotfiles.org::alias][alias]]
alias ek="emacsclient -e '(kill-emacs)'"
alias e="emacsclient --alternate-editor= -tc"
alias vi="vim"
alias vim="nvim"
alias bat="batcat"
alias cat="bat"
alias ls="exa -F"
alias ll="exa -l -g --icons"
alias la="exa -a"
alias lt="exa --tree"
alias lla="ll -a"
# alias ends here

# https://github.com/direnv/direnv/blob/master/docs/hook.md
eval (direnv hook fish)
# direnv hook fish | source

set --universal nvm_default_version lts/gallium

# https://fishshell.com/docs/current/cmds/eval.html
# set path_helper /usr/libexec/path_helper
if type -q /usr/libexec/path_helper
     # do stuff
     eval (/usr/libexec/path_helper -c)
end
# fish_add_path -mP /usr/local/opt/coreutils/libexec/gnubin
# config.fish:1 ends here
