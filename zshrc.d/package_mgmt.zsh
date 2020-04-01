# cross-distro magic incantations

_list_pacman_pkg_files() {
    local pkg=$1
    pacman -Qi ${pkg} 1>/dev/null 2>&1
    if [ $? -eq 0  ]; then
        pacman -Qlq ${pkg} | grep -v '/$' | xargs du -h | sort -h
    fi
}

if command -v dnf 1>/dev/null 2>&1; then
    # list files in a package
    alias pkgl="dnf repoquery -l"
elif command -v apt 1>/dev/null 2>&1; then
    alias pkgl="dpkg -L"
elif command -v pacman 1>/dev/null 2>&1; then
    alias pkgl=_list_pacman_pkg_files
fi
