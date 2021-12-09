#! /bin/bash

set -u

echo "setting max width for images"
pushd ./images
magick mogrify -resize 1000x712\> -quality 80 *.jpg
magick mogrify -resize 1000x712\> -quality 80 *.png
popd

echo "optimising jpegs"
find ./images -name "*.jpg" -type f -exec jpegtran -copy none -optimize -progressive -perfect -outfile {} {} \;

echo "optimising PNGs"
find ./images/ -name "*.png" -type f -print0 |xargs -n 1 -P 4 -0 optipng -o4 | grep "% decrease"

exit 0