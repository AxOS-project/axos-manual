#!/bin/bash

set -euo pipefail

SRCDIR="./src"
OUTROOT="./src/man"

echo "==== Building man pages from Markdown using Pandoc ===="

shopt -s nullglob
for mdfile in "$SRCDIR"/*.[0-9].md; do
    basefile=$(basename "$mdfile" .md)
    rofffile="$SRCDIR/$basefile"

    echo "Generating roff: $mdfile → $rofffile"
    pandoc -s -t man "$mdfile" -o "$rofffile"

    echo "Compressing: $rofffile → $rofffile.gz"
    gzip -kf "$rofffile"

    section="${basefile##*.}"
    if [[ "$section" =~ ^[0-9]$ ]]; then
        outdir="$OUTROOT/man$section"
        mkdir -p "$outdir"
        echo "Moving: $rofffile.gz → $outdir/"
        mv -v "$rofffile.gz" "$outdir/"
    else
        echo "Skipping $rofffile.gz (invalid section)"
    fi

    echo "Cleaning up: removing $rofffile"
    rm -f "$rofffile"
done

echo
echo "==== Done ===="
