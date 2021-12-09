#! /bin/bash

set -u

echo "setting max width for images"
magick mogrify -path ./images -resize 1000\> -quality 80  *.jpg
magick mogrify -path ./images -resize 1000\> -quality 80  *.png


echo "optimising jpegs"
find ./images -name "*.jpg" -type f -exec jpegtran -copy none -optimize -progressive -perfect -outfile {} {} \;

echo "optimising PNGs"
find ./images/ -name "*.png" -type f -print0 |xargs -n 1 -P 4 -0 optipng -o4 | grep "% decrease"

exit 0