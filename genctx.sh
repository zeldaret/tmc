headers=""
num=0

recurse_dir() {
    for file in `ls $1`
    do
        if [ -d $1/$file ]
        then
            recurse_dir $1/$file
        else
            if [ -f $1/$file ]
            then
                if [ ${file##*.} = "h" ]
                then
                    # make a copy of the path but without ./
                    p=${1#./}
                    #if path begins with / then remove it
                    p=${p#/}
                    # if path isnt empty add /
                    if [ -n "$p" ]
                    then
                        p="$p/"
                    fi
                    headers+="#include \"$p$file\"\n"
                    num=$(( $num + 1 ))
                fi
            fi
        fi
    done
}

cd include
recurse_dir ./
cd ..

echo "#include \"gba/types.h\"\n$headers" | cc -E -nostdinc -Iinclude -Itools/agbcc/include - > ctx.c
echo "$headers"
echo "$num headers, written to ctx.c"
