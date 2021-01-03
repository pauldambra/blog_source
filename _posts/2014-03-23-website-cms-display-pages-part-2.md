---
title: "Website != CMS Platform - Displaying pages - part 2"
layout: "post"
permalink: "/2014/03/website-cms-display-pages-part-2.html"
date: "2014-03-23 12:33:00"
updated: "2014-04-11 18:24:24"
category: cms
tags: [learning, cms, design, web, series]
---

This post is part of a series where I'm hoping to prove to myself that building a dynamic website without a CMS is comparable to building one with a known CMS. [See the first post for an explanation of why](/2014/02/websites-cms.html)

[Previous Post](/2014/03/websites-cms-displaying-pages.html)
<!--alex ignore her-him --->
In his awesome book, "Don't Make Me Think" [(shameless affiliate link)](https://www.amazon.co.uk/Dont-Make-Me-Think-Usability/dp/B00HJUBRPG/ref=sr_1_1?s=books&ie=UTF8&qid=1473701528&sr=1-1&keywords=Don%27t+Make+Me+Think%3A+A+Common+Sense+Approach+to+Web+Usability+%28Voices+That+Matter%29), Steve Krug drives home the message that time spent figuring out how your site is supposed to work is not time spent deciding to engage with your site. So, we're not going to do any ground-breaking design work for this company web page.

<!--more-->

When people visit the site they should understand straight away how they're supposed to use it. An image search for ['company website'](https://www.google.co.uk/search?q=company+website&amp;safe=off&amp;espv=210&amp;es_sm=119&amp;source=lnms&amp;tbm=isch&amp;sa=X&amp;ei=dNwmU8XBKu6y0AW144GgBQ&amp;ved=0CAkQ_AUoAQ&amp;biw=1246&amp;bih=658#pws=0&amp;q=company+website&amp;safe=off&amp;tbm=isch) shows the same design over and over again - and, I expect, you'll be instantly familiar with it.

A logo, a navigation bar, a large carousel or image area, some content in columns below, and a footer.

![A random image from Google images search for 'company website' (not an endorsement](http://fc06.deviantart.net/fs70/f/2011/136/f/4/cargo_company_website_layout__by_rizmax-d3ghbws.jpg))

There are relatively few company websites that step away from this basic design. And this site for (the hopefully fake) 'Omniclopse' isn't going to stray from this format.

# Layout

The site is going to use [Twitter Bootstrap](http://getbootstrap.com/) for layout and custom styling will be written with SASS instead of directly as CSS. 

Twitter Bootstrap because I'm familiar with it, I can expect others to be familiar with it, and while there is a risk that the site ends up looking like every other site built with Bootstrap the intention is specifically not to worry about breaking design records - the site should aim to use a visual language that the visitor already speaks.

SASS because it is <b><i>so</i></b> much nicer writing SASS than CSS. 

I like my HTML templates to actually be HTML so when Express is setup the default Jade view engine will be removed and a Handlebars view engine will be used instead.

I haven't used a Handlebars view engine with Express before so I'll need to do a touch of Google-Fu to find one.

# So!

To grab bootstrap and jQuery (which bootstrap depends on) I'll use [Bower](http://bower.io/). If you're playing along you can download them directly (but that's no fun, right).

At the terminal: `bower install bootstrap -Sa`

Which downloads bootstrap into the project and adds the dependency to the Bower file.

![bower screenshot](http://2.bp.blogspot.com/-baCBB1wk9v4/UydeKDfveOI/AAAAAAAANTI/biw5I8wKUGE/s1600/Screenshot+2014-03-17+20.41.27.png)

Bower, by default, adds everything into a bower_components directory so we tell Express about that in the Express app config:

`app.use(express.static('/libs',__dirname + '/bower_components'));`

# View Engine

At the terminal: `npm install express3-handlebars --save`

installs the [Express3 Handlebars view engine](https://github.com/ericf/express3-handlebars).

Add the view engine's config to the server.js file:

```javascript
var express = require('express');
var app = express();
var exp3hbs  = require('express3-handlebars');

app.use('/libs', express.static(__dirname + '/bower_components'));
app.engine('handlebars', exp3hbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

app.get('/', function(req, res){
  res.render('home');
});

app.listen(1337);

exports.app = app;
```

This requires two layout files be added to the site:

![layouts file tree](http://3.bp.blogspot.com/-lLif2FbDonw/Uyd6VGPgoTI/AAAAAAAANTY/7oLoCCYcqKg/s1600/Screenshot+2014-03-17+22.41.59.png)

Here main.handlebars is the default base layout and home.handlebars is rendered by the method that responds to the root route.

At this point what the site does hasn't changed how it does what it does so the single test (useless as it is) still passes.

# Building out the Base Template

Starting to build out the page requires setup to use SASS.

#### Gulp

There is an express plugin that will transpile SASS files when CSS requests are served but, as I want to use Gulp for some linting and minification tasks later on, this is the time to [plug Gulp into the project ](https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md#getting-started)and set up a watch task to transpile SASS to CSS.

So at the terminal:

```bash
npm install --save-dev gulp

npm install --save-dev gulp-sass
```

Then a little fangling to generate the gulp file.

```javascript
var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('sass', function () {
    gulp.src('./scss/*.scss')
        .pipe(sass())
        .pipe(gulp.dest('./public/css'));
});

gulp.task('watch', function() {
    gulp.watch('./scss/*.scss', ['sass']);
});

gulp.task('default', ['sass', 'watch']);
```

Typing gulp into the terminal now leaves a task running which watches for changes to .scss files and transpiles them to .css files

### The Omniclopse Brand

For the imaginary company we're making a site for we can [generate a colour palette](http://colorschemedesigner.com/)

![Yes, I am NOT a designer](http://1.bp.blogspot.com/-BUSdRfoR_fc/UytGol1Ni5I/AAAAAAAAPMc/pqoQv7RgnbY/s1600/Screenshot+2014-03-20+19.44.18.png)

# The Page

and after a bit of fangling to build out the (admittedly ugly) page:

![screenshot of the built page](http://3.bp.blogspot.com/-52O3oytmg_E/Uy7SVJgQ-JI/AAAAAAAAPg4/jNbYLNIcXI8/s1600/home-one.png)

The code for this page can be found [tagged on github](https://github.com/pauldambra/omniclopse/tree/v0.1) and at this point there's nothing groundbreaking (nor should there be). You can visit the site [here on Heroku](http://omniclopse-v0-1.herokuapp.com/).

There are bits of the page HTML that I'm not happy with but that can be changed as the site work progresses.

The single test in the project still passes but that doesn't really prove anything. So the next post is going to be a short aside about using Selenium and Browserstack.
