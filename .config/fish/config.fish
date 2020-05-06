set -gx PATH /usr/local/opt/qt/bin $PATH

# asdf
source /usr/local/opt/asdf/asdf.fish

# golang
set -gx GOPATH $HOME/.go
set -gx GOROOT (brew --prefix golang)/libexec
set -gx PATH $PATH $GOPATH/bin $GOROOT/bin
test -d "$GOPATH" || mkdir "$GOPATH"
test -d "$GOPATH/src/github.com" || mkdir -p "$GOPATH/src/github.com"


alias g="git"
alias d="docker"
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcb="docker-compose build"
alias dcps="docker-compose ps"
alias dcl="docker-compose logs -f --tail=500"


for completion_file in /usr/local/share/fish/vendor_completions.d/*.fish
    source $completion_file
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
