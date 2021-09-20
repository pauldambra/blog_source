require 'html-proofer'

# set -eu

# bundle exec htmlproofer \
#   _site \
#   --file-ignore /.git/ \
#   --check-favicon \
#   --check-html \
#   --check-opengraph

# becomes

options = { 
  assume_extension: true,
  check_favicon: true,
  check_opengraph: true,
  check_html: true,
  file_ignore: ['/.git/'],
  url_ignore: [
    'https://codepen.io/pauldambra/pen/gIseG/', 
    'https://codepen.io/pauldambra', 
    'https://codepen.io',
    'https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html',
    'https://developer.android.com/reference/android/content/Intent',
    'https://www.googletagmanager.com/gtag/js?id=UA-49969634-1',
    'https://www.esa.int/Our_Activities/Space_Science/Herschel/How_many_stars_are_there_in_the_Universe'
  ],
  parallel: { in_processes: 6 }
}
HTMLProofer.check_directory("./_site", options).run