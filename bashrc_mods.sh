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

tarxz() {
    # No arguments
    if [ "$#" -eq 0 ]; then
        echo "Usage:"
        echo "  tarxz <file_or_folder>                  -> creates name.tar.xz"
        echo "  tarxz <archive.tar.xz> <items...>       -> custom archive name"
        return 1
    fi

    local archive
    local items=()

    # ---- Case 1: single argument ----
    if [ "$#" -eq 1 ]; then
        local item="$1"

        if [ ! -e "$item" ]; then
            echo "Error: '$item' does not exist"
            return 1
        fi

        # remove trailing slash if directory
        item="${item%/}"
        archive="$(basename "$item").tar.xz"
        items=("$item")

    # ---- Case 2: ≥2 arguments ----
    else
        archive="$1"
        shift
        items=("$@")

        # Validate all items exist
        for item in "${items[@]}"; do
            if [ ! -e "$item" ]; then
                echo "Error: '$item' does not exist"
                return 1
            fi
        done
    fi

    # Detect CPU cores
    local cores
    cores=$(nproc)
    echo "Detected CPU cores: $cores"

    # Compress
    echo "Compressing into: $archive"
    tar -cvf "$archive" -I "xz -9e -T${cores}" "${items[@]}"

    if [ $? -eq 0 ]; then
        echo "Successfully created: $archive"
    else
        echo "Compression failed"
        return 1
    fi
}
