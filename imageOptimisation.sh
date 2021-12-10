#! /bin/bash

set -u

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

# from https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/
smartresize() {
    # don't use magick command from imagemagick 7 as Ubuntu 20 comes with imagemagick 6
   mogrify -filter Triangle -define filter:support=2 -thumbnail 1000x712\> -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB *.$1
   mogrify -path 300 -filter Triangle -define filter:support=2 -resize 300\> -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB *.$1
   mogrify -path 480 -filter Triangle -define filter:support=2 -resize 480\> -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB *.$1
}

pushd "images"
if [ "$(ls -A | grep -i \\.jpg\$)" ]; then smartresize "jpg"; fi
if [ "$(ls -A | grep -i \\.png\$)" ]; then smartresize "png"; fi
popd


echo "optimising jpegs"
find ./images -name "*.jpg" -type f -exec jpegtran -copy none -optimize -progressive -perfect -outfile {} {} \;

echo "optimising PNGs"
find ./images/ -name "*.png" -type f -print0 |xargs -n 1 -P 4 -0 optipng -o4 | grep "% decrease"

exit 0