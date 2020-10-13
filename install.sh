#!/bin/bash

for f in .??*; do
    [[ "$f" == '.git' ]] && continue
    [[ "$f" == '.gitattributes' ]] && continue
    [[ "$f" == '.gitconfig.user' ]] && continue

    ln -fns "$(cd $(dirname $f) && pwd)/$(basename $f)" "$HOME/$f"
done