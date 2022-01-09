#!/usr/bin/env bash

FORMAT_OPTS="-i -style=file"
TIDY_OPTS="-p . --fix --fix-errors"
COMPILER_OPTS="-fno-builtin -std=gnu90 -Iinclude -Isrc -D_LANGUAGE_C -DNON_MATCHING"

shopt -s globstar

if (( $# > 0 )); then
    echo "Formatting file(s) $*"
    echo "Running clang-format..."
    clang-format ${FORMAT_OPTS} "$@"
    echo "Running clang-tidy..."
    clang-tidy ${TIDY_OPTS} "$@" -- ${COMPILER_OPTS} &> /dev/null
    echo "Adding missing final new lines..."
    sed -i -e '$a\' "$@"
    echo "Done formatting file(s) $*"
    exit
fi

echo "Formatting C files. This will take a bit"
echo "Running clang-format..."
clang-format ${FORMAT_OPTS} src/**/*.c
clang-format ${FORMAT_OPTS} include/**/*.h
echo "Running clang-tidy..."
clang-tidy ${TIDY_OPTS} src/**/*.c -- ${COMPILER_OPTS} &> /dev/null
clang-tidy ${TIDY_OPTS} include/**/*.h -- ${COMPILER_OPTS} &> /dev/null
echo "Adding missing final new lines..."

# only run sed if no new line at the end of file so we don't unnecessarily touch the file.
find src/ -type f -name "*.c" -exec bash -c 'if [[ -n  "$(tail -c 1 {})" ]]; then sed -i -e '"'"'$a\'"'"' {}; fi' \;
echo "Done formatting all files."
