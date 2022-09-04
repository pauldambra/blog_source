My super-good awesome-fun blog

Uses Github actions for CI so that I can use Jekyll and plugins.

Livereload is built-in to Jekyll 3.7+ so it no longer uses guard

## to run:

`bundle install && bundle exec jekyll serve --livereload`

## Manual Spell checking runs

Uses "markdown spellchecker" - an awesome tool. To run it in its interactive mode:

```bash
 node_modules/.bin/mdspell _posts/*.md \
  --en-gb \
  --ignore-numbers \
  --ignore-acronyms \
  --no-suggestions
  ```