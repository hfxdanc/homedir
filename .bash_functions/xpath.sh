type xpath >/dev/null 2>&1 && return 0

xpath () {
    xmllint --xpath ${1+"$@"}
}
