#! /bin/bash

function main {
  npm install
  lint_spelling
  lint_meaning
}

function lint_spelling {
  npx spellchecker --files '_posts/**/*.md' --language en-GB --dictionaries .dictionary --plugins spell frontmatter --quiet
}

function lint_meaning {
  npx alex _posts --diff --why
}

main
