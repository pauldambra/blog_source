---
title: "2024 Year Notes"
layout: "post"
permalink: "/2025/05/year-notes.html"
date: "2025-05-05 08:00:00"
description: "My year notes for 2024"
category: "year-notes"
tags: ["dear-diary", "working-out-loud"]
---

I remain super un-inspired to write over the last few years. Which is a shame - because it's a a great way to learn. And very uninspired to write about 2024 in particular. So, here are some very short year notes for 2024.

<!--more-->

## previous year notes

<ul class="list-none">
  {% for post in site.posts %}
    {% assign tags = post.tags | join: ',' | append: ',' %}
    {% if tags contains 'year-notes,' %}
      <li class="m-1">
        <h3>
          <a class="no-underline hover:underline text-black" href="{{ post.url }}">
            {{ post.title }} - ({{ post.date | date_to_string }})
          </a>
        </h3>
        <div>{% include tags.html tags=post.tags %}</div>
      </li>
    {% endif %}
  {% endfor %}
</ul>

# Why don't I want to write about 2024...

2024 was in some ways great, genuinely so, life is good...

But it was over-shadowed by grief and the preparation for grief. You can find out about that in this post [https://pauldambra.dev/2024/09/wwmd.html](https://pauldambra.dev/2024/09/wwmd.html) (unless you'd like to avoid grief)

# Goals I chose for 2024

### work

- continue becoming a better engineer and team-mate
- take more time to lift my head up and look at the horizon
- get better at digging into tricky problems
- get better at not being distracted by tricky problems if there is some higher value work I should be doing
- speak to customers for at least 5 hours over the year

### home

- more time with my family (screens off, not watching telly)
- solidify my transactional Italian, figure out how to head towards conversational Italian
- train at the gym at least twice a week every week (and lose weight)
- visit Italy at least twice

## Travel

Google doesn't support timeline in the web view anymore... 🤷
So, no image of my travel

I visited 

- Sicily
  - to hack on a heatmaps product
- Valencia
  - for a team offsite
- Vienna
  - for a team onboarding
- Mykonos
  - for the whole company offsite

it is wild to me to consider that much travel in a year that felt so small

## Work

At one point I was outside The Christie in Manchester (a specialist cancer treatment hospital we are so lucky to have). I overheard a man on the phone, anxious, agitated, almost shouting: "they've said they can't see me! i can't come back another day. if i have to take more time off work i'll lose my job".

I am uncountably greatful to have a job where I was told to take whatever time I needed. Where colleagues picked up the slack. And that I enjoy so much.

# Me

I lost 12kg in 2024. The unrelenting drudgery of not eating is so dull.

I've continued enjoying cooking. Food has always been an expression of love in my life.

## first pasta of 2024

![the first pasta I cooked in 2024](/images/2025/05/first-pasta-2024.jpg){: loading="lazy"}

## last pasta of 2024

![the last pasta I cooked in 2024](/images/2025/05/last-pasta-2024.jpg){: loading="lazy"}

## My favourite moment of 2024?

Cheesy, but it was when my dad said "i'd be happy to be served that pasta in Italy"

![the pasta my dad thought was good enough for italy](/images/2025/05/dad-pasta-2024.jpg){: loading="lazy"}

# What writing this taught me I want to do in 2025

OMG I have no idea... we're nearly 6 months through. I think I just need a year without life-grinding disruption.

Let's just carry everything forwards...

### work

- continue becoming a better engineer and team-mate
- take more time to lift my head up and look at the horizon
- get better at digging into tricky problems
- get better at not being distracted by tricky problems if there is some higher value work I should be doing
- speak to customers for at least 5 hours over the year

### home

- more time with my family (screens off, not watching telly)
- solidify my transactional Italian, figure out how to head towards conversational Italian
- train at the gym at least twice a week every week (and lose weight)
- visit Italy at least twice
