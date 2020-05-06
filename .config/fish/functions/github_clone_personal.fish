function github_clone_personal --description "Clone repo from GitHub using personal SSH keys and set up proper user.email"
    set REWRITTEN_URL (echo $argv[1] | string replace "github.com" "pgithub.com")
    set DIRNAME (echo $argv[1] | string split "/" | tail -n 1 | string replace ".git" "")
    git clone $REWRITTEN_URL
    echo "cd $DIRNAME; and git config --local user.email \"and-semakin@ya.ru\"; and git config --local user.name \"Andrey Semakin\"" | fish /dev/stdin
end
