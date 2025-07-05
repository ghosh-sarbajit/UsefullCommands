# dir aliases
alias up1='cd ../'
alias up2='cd ../../'
alias up3='cd ../../../'
alias up4='cd ../../../../'
alias up5='cd ../../../../../'
alias up6='cd ../../../../../../'
alias up7='cd ../../../../../../../'
alias up8='cd ../../../../../../../../'
alias up9='cd ../../../../../../../../../'
alias up10='cd ../../../../../../../../../../'

up () {
    local d=""
    local limit=$1
    for ((i=1; i<=limit; i++)); do
        d+="../"
    done
    cd "$d" || return
}
