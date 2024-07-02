#check if we have given the script a parameter
if [ "$1" ]; then
    directory=$1
else
    echo "No Directory Entered"
    exit 1
fi

#check if it is a legit directory
if [ ! -d "$directory" ]; then
    echo "No directory Found"
    exit 1
fi

#find the type for a given directroy, d:directory f:file l:link, and count with wc
echo Directories : 
find "$directory" -mindepth 1 -type d | wc -l

echo Regular files:
find "$directory" -mindepth 1 -type f | wc -l

echo Symbolic links:
find "$directory" -mindepth 1 -type l | wc -l

# wc -l: counts the number of lines
# mindepth to not count the folder itself