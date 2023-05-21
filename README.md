# profile
Local HOMEDIR setup.  Paste following in the target directory to express contents ...

```shell
cat <<- %E%O%T% | /bin/sh -
    URL="https://github.com/hfxdanc/homedir/archive/refs/heads/main.zip"
    TMPDIR=\$(mktemp -d)

    trap "rm -rf \$TMPDIR" EXIT

    (cd \$TMPDIR && wget \$URL)
    (cd \$TMPDIR && unzip main.zip) || exit 1

    cp -r \$TMPDIR/homedir-main/.* .
%E%O%T%
```

Edit `.gitconfig` with appropriate account information and `.ssh/config` with the SSH keys for your GitHub account.
