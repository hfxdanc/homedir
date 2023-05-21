# From /etc/init.d/function
# Evaluate shvar-style booleans
is_true() {
    case "$1" in
    [tT] | [yY] | [yY][eE][sS] | [oO][nN] | [tT][rR][uU][eE] | 1)
        return 0
        ;;
    esac
    return 1
}

# Evaluate shvar-style booleans
is_false() {
    case "$1" in
    [fF] | [nN] | [nN][oO] | [oO][fF][fF] | [fF][aA][lL][sS][eE] | 0)
        return 0
        ;;
    esac
    return 1
}

