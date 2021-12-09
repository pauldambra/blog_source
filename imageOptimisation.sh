#! /bin/bash

set -u

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

for d in $(find ./images -type d)
do
    pushd $d
    echo "setting max width for images in $d"
    if [ "$(ls -A | grep -i \\.jpg\$)" ]; then magick mogrify -resize 1000x712\> -quality 80 *.jpg; fi
    if [ "$(ls -A | grep -i \\.png\$)" ]; then magick mogrify -resize 1000x712\> -quality 80 *.png; fi
    popd
done


# echo "optimising jpegs"
# find ./images -name "*.jpg" -type f -exec jpegtran -copy none -optimize -progressive -perfect -outfile {} {} \;

# echo "optimising PNGs"
# find ./images/ -name "*.png" -type f -print0 |xargs -n 1 -P 4 -0 optipng -o4 | grep "% decrease"

exit 0