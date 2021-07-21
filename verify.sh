#! /bin/bash

function main {
  npm install
  lint_markdown
  lint_spelling
  lint_meaning
}

function lint_markdown {
  npx remark . --use lint --frail
}

function lint_spelling {
  npx mdspell _posts/**.md \
    --en-gb \
    --ignore-numbers \
    --ignore-acronyms \
    --report
}

function lint_meaning {
  npx alex _posts --diff --why
}

main