#! /bin/bash

set -eu

TRAVIS_BLOG_TOKEN=${DEPLOY_BLOG_TOKEN:-''}

if [ -z $TRAVIS_BLOG_TOKEN ]
then
  DEPLOY_REPO="git@github.com:pauldambra/blog_source.git"
else
  DEPLOY_REPO="https://${TRAVIS_BLOG_TOKEN}@github.com/pauldambra/pauldambra.github.io.git"
fi

function main {
	clean
	get_current_site
	build_site
}

function clean {
	echo "cleaning _site folder"
	if [ -d "_site" ]; then rm -Rf _site; fi
}

function get_current_site {
	echo "getting latest site"
	git clone --progress --depth 1 $DEPLOY_REPO _site
}

function build_site {
	echo "building site"
	bundle exec jekyll build
}

main
