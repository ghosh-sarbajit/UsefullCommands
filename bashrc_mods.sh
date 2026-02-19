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
    # Case 1: No arguments
    if [ "$#" -eq 0 ]; then
        echo "Usage:"
        echo "  tarxz <folder>                       -> creates folder.tar.xz"
        echo "  tarxz <archive.tar.xz> <folder...>   -> custom archive name"
        return 1
    fi

    local archive
    local folders=()

    # Case 2: Only one argument → auto archive name
    if [ "$#" -eq 1 ]; then
        local folder="$1"

        if [ ! -d "$folder" ]; then
            echo "Error: '$folder' is not a directory"
            return 1
        fi

        archive="${folder%/}.tar.xz"   # remove trailing slash if exists
        folders=("$folder")

    else
        # Case 3: ≥2 args → first is archive name
        archive="$1"
        shift
        folders=("$@")

        # Validate all folders
        for folder in "${folders[@]}"; do
            if [ ! -d "$folder" ]; then
                echo "Error: '$folder' is not a directory"
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
    tar -cvf "$archive" -I "xz -9e -T${cores}" "${folders[@]}"

    if [ $? -eq 0 ]; then
        echo "Successfully created: $archive"
    else
        echo "Compression failed"
        return 1
    fi
}
