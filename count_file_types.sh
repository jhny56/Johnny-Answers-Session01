if [ $1 ]; then
    directory = $1
else
    echo "No Directory Entered"
    exit 1
fi

if [ls directory]; then
    echo "Directory Found"
else
    echo "No directory Found"
    exit 1
fi


directoryNb = $(find $directory -maxdepth 1 -type d)

echo $directoryNb