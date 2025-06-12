# dir aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

up () {
    local d=""
    local limit=$1
    for ((i=1; i<=limit; i++)); do
        d+="../"
    done
    cd "$d" || return
}
