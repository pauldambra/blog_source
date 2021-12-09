---
title: "Tech Debts"
layout: "post"
permalink: "/2021/07/tech-debts.html"
date: "2021-07-21 08:00:00"
description: "There are four things we call tech debt"
category: "semantics"
tags: ["meaning", "pedantry"]
---

Here is something I had to write down at work. Something I've tried to say (with varying success) more than once. That I'm publishing here so I can refer back to it in future and in case it is useful for someone else

When I am thinking about this, I am thinking about three things

[Two of the agile principles](https://agilemanifesto.org/principles.html)

  * > Continuous attention to technical excellence and good design enhances agility.
  * > Simplicity--the art of maximising the amount of work not done--is essential.

And the XP Rule

  * > [Refactor Mercilessly](http://www.extremeprogramming.org/rules/refactor.html)

<!--more-->

# Owning software is like having a garden

![/images/tech-debts/tree.jpg](/images/tech-debts/tree.jpg){:loading="lazy"}

In managing a garden, you need to

1) frequently and persistently weed

> "Argh, the young apple tree is being choked by bindweed again."

2) look at the consequences of your decisions as the plants grow

> "hmmm, the apple tree is healthier now that I moved it, but it means it's grown a low branch across the path."

3) deal with the consequences of decisions made before it was your garden

> "I would never have put an apple tree that near to the path."

4) delay work based on your context

> x: "The apple tree is growing too large but, I can't prune it until late winter." <br/>
> y: "It could make the tree ill. But, we could tie the branch back until we prune it."

# With tech debt, too, there are four things, not one

People say tech debt and mean more than one thing.

1. Mess
2. Things we did that we no longer like
3. Things someone else did that I do not like
4. Classical technical debt

That means we can think we agree when we're talking about different things. I have seen multiple people and teams (including myself) struggle with this.

# TL;DR

You don't need permission for making incremental improvements in the course of work. That's engineering. It should be included _if_ and when you estimate. When estimating think of both the ideal day **and** the most horrible day. We tend to think of the ideal but rarely experience it. Meaning our estimates fall short

### Any technical improvement that can be done in the course of your work, should be done.

We don't budget time for writing tests or searching StackOverflow. Many small changes will have a large cumulative impact. The waves shape the beach by moving the sand a tiny amount.

The team should work with the Principal Engineer to determine the direction of travel and then follow it. This is particularly true for category one below: mess

### Any technical improvement that can't be done in the course of work should be described, proposed, and measured.

Anything else is often "something the team wants to do". See categories 2 and 3 below. They should be described and capture the impact of doing or of not doing that work. They can then be prioritised, and reported on. In other words, it is treated the same as a request from outside of the team.

The team should work with the Principal Engineer and the Product Manager. To determine how to measure the desired improvement. And how to propose it for prioritisation

### And you should switch between those two modes

Sometimes you start what you think is a quick task. And discover it isn't. You should stop, write it down and treat it as a separate piece of work.

# The four things we call technical debt

# 1. Mess

<!--alex ignore ball-->
[Foote and Yoder propose that all architectures become a big ball of mud.](http://www.laputan.org/mud/) It's a great paper. I suggest that software always ends up looking like the home of a hoarder.

![a picture of a hoarders room, very messy, with piles of things](/images/tech-debts/Hoarding_living_room.jpeg){:loading="lazy"}

## What is it?

[People solve problems by adding things far more than they do by removing them.](https://www.sciencealert.com/here-s-why-our-brains-always-want-to-solve-problems-by-adding-not-taking-away) That's what hoarders do. Nobody set out to create the room in the image. They kept adding things that they thought were useful. The hoarder is used to it. It becomes their normal. Anyone new to the hoarder's home can't imagine how they can live there.

At some point, the software industry started calling this technical debt. It isn't. It's mess. The only response to mess. Is to accept it is inevitable and to tidy up at a faster rate than we add mess.

In the physical world when the mess is particularly bad we have no choice but to stop everything, hire a skip, and throw everything away. Sometimes this is the right choice for software but we aren't constrained by mess in the same way that we are in the physical world.

## How do we react?

In the software world we deal with this mess by refactoring. One of the XP rules is to [refactor mercilessly](http://www.extremeprogramming.org/rules/refactor.html). Modern IDEs have tooling to help make this safe. A great guide to this is to use [code smells](https://refactoring.guru/refactoring/smells) as a guide to what to do next. 

This is a constant activity. You consider this for every task you complete. You are, however, allowed to be pragmatic. You may say: "I won't fix that *now* because I know folk are waiting for this bug fix so we can start making money again". But you watch for *always* choosing the pragmatic path. The road to hell is paved with good intentions.

Some people have had success putting "golden" tickets in the backlog and everyone has to play a golden ticket in ever iteration. One person may use theirs to learn, another to go back and refactor to remove the code smell that had bugged them in some recent work.

You may not know where to start. If you haven't been tidying enough you should start anywhere rather than worry about which is the best bit of tidying. You will learn what to do by trying to do it.

## What to watch out for?

If you find yourself pulling new tickets into your iteration, time-box, or sprint that is a good signal that you are rushing through implementing without tidying.

It is tempting to try to put value on individual pieces of tidying. But the value is in the constant application of effort. Not in any one individual piece of tidying. 

What we would have to put value on is if we want to treat tidying as a task separate to our work. "I want to stop doing other things for M days, in order to tidy up. I believe this is necessary because X, Y, and Z". Here you have to put value on it because you are asking other people to stop and wait while you tidy.

You may not know where to start. If you haven't been tidying enough you should start anywhere rather than worry about which is the best bit of tidying. You will learn what to do by trying to do it.

## Related XP values

"courage" to make the changes you believe will improve the code, no matter how big they are. Modern tooling makes large changes safe. If you find you can't make large changes safely, that's a new signal of how to improve your testing.

And "respect". Firstly, respect that your team mates are right to try and tidy *this* ***now**.* And secondly, respect for others working in or with the team. Tidying might mean they're waiting longer than they expect. Tell them what is happening. 

## 2 Things we did that we no longer like

I loved that coat. A genuine first world war camel hair trench coat. It kept me dry and warm through many an Oldham winter snowstorm. I thought it was great. As time passed I had to come to terms with the fact that when it was wet it smelled like a dead dog. 

What I had thought was a great coat, was actually a smelly coat. It served me well until I realised it stank.

![a very old picture of a very young me wearing an original world war one camelhair coat](/images/tech-debts/bad_history.jpeg){:loading="lazy"}

## What is it?

We are always growing and learning. Decisions we make that we are proud of eventually become decisions we wish we hadn't made. Sometimes it is <!--alex ignore easy--> easy to change the decision. Other times it is hard.

It is tempting for this to be treated as concrete ("Monoliths are bad now") when it is often preference ("We would like to use Webpack that we don't understand instead of Gulp that we don't understand")

## How do we react?

In one of two ways.

### 1) slowly applying a direction of travel

We choose a direction "we will more carefully apply the interface segregation principle". Maybe we run sessions to get or keep the team aligned on the direction. And then we fix the thing as it falls in front of us. 

In this specific case: 

- every time we edit a file,
- if the interface is too large,
- we use our brains and our IDE tools to break it into smaller interfaces

As these are in the moment changes we don't even tell people we're doing it. It's a part of the work

### 2) clearing the slate

Sometimes the change is too large to be done in tiny pieces or would take so long to complete in small pieces you may as well never start. 

In this case: 

 * we figure out why it is a problem
     * e.g. every time we make a particular ten minute config change (X times per year) we lose 3 hours of time for at least two people.
 * and we say what happens if we fix it
     * e.g. If we spend 10 days fixing this we will save 15 days this year, and 20 days every year after that

Similarly to the need for respect for other people's time when dealing with mess. When clearing the slate we are asking other people to wait while the engineering team seemingly achieves nothing. We don't always have to be right that we should stop and spend time changing our minds but we do have to be careful

## What to watch out for?

Watch out for fads! Yes, SvelteJS might be getting lots of social media traction but do we want to invest tens of thousands of pounds changing JS frameworks. 

Watch out for swapping a known set of problems for almost the same problems in different clothes. You may hate Dropwizard and wish we were using Spring. Or think we shouldn't use Jenkins because GoCD is better. etc etc. There's much more to adopting a technology than the text files.

Replacing "Things we did that we no longer like" with "things we now like" can cause your products and systems to stand still while you do the work. Watch out for replacing things without knowing when to stop or how to measure it

Equally, watch out for *never* replacing decisions you've outgrown. There's a lot of room for manoeuvre between "never replace existing tech" and "OMG we should use Rust!" 

# 3. Things someone else did that I do not like

[Jessica Kerr talks about "downhill invention, uphill analysis"](https://www.youtube.com/watch?v=Lp-Xqj8wSMg) from [Vehicles by Valentino Braitenberg](https://mitpress.mit.edu/books/vehicles). Explaining that it is easier to think about how to replace a system than it is to think about how it works. And, so, we naturally tend to think that systems we inherit are bad, and the ones that we replace them with are good

![the different styles of the same thing meme, one thing drawn in multiple styles](/images/tech-debts/actual_different_styles_meme_by_zeurel-d38c306.png){:loading="lazy"}

## What is it?

Because of how the brain works, the people that made a thing in a particular way are often too slow to accept they should have made it a different way (see [Things we did that we no longer like]()). And, people that are fresh to the thing are often too quick to suggest that it should have been made in a different way. Not being present when the context forced your hand, or when mistakes were made, mean you are less willing to accept the current state.

## How do we react?

It is good to take advantage of fresh perspectives. At a minimum we use this to help set long-term direction. E.g. "I found it very confusing to onboard and there are four different ways of deploying the applications. I can't see a reason for having more than one. But the work to reduce the number of ways we have looks complicated"

And we should also be looking for low-hanging fruit. E.g. "I see we're using CloudFront but not setting cache-control headers. I've seen cache-control headers have positive impact in multiple systems. I reckon I could add them in less than two days"

## What to watch out for?

We always under-estimate the effort required to replace something and over-estimate the effort required to understand it. 

Also watch out for justifications based on something being best or current practice. All practice is context dependent. One person's best practice is another's terrible idea. Use tools like [Wardley Mapping](https://medium.com/wardleymaps) and [Cynefin](https://lizkeogh.com/cynefin-for-everyone/) to help determine what practice to apply.

# 4. Classical Technical Debt

[Technical debt](https://wiki.c2.com/?TechnicalDebt) is the purposeful decision to defer some necessary work in order to meet a deadline. The debt metaphor is well chosen for descriptive purposes. As the impact of the debt gets worse over time, particularly if we pay back the minimum charge or less. But, engineers always talk about debt as if it is bad. Businesses don't think of debt as bad. There is always debt in running a business and you are always choosing what debt to ignore.

Tech debt has been short hand for so long now that everyone means a different thing but thinks they agree. It may be better to talk about whether we are keeping scope and delaying implementation or reducing scope and managing consequences.

![several credit cards and a bill behind them](/images/tech-debts/credit-card-1104961_1280.webp){:loading="lazy"}

## What is it?

Technical debt is a purposeful choice to make a version of something that is working from the perspective of the customer. But that is either made badly or missing necessary work that means it is hard to maintain or change.

It is only bad when the work to add technical debt is more common than work to remove it. Think of each piece of debt as a new credit card and not a single purchase on one card.

It isn't reducing scope with no intention to pay back the debt. 

## How do we react?

We track it. Ideally we keep a ticket in Jira or whatever equivalent is in use. That ticket is assigned to the business person that made the decision to incur the debt. As the cost of the debt becomes apparent the ticket is kept up-to-date so prioritisation can occur.

Technical debt is deferred work not avoided work. If you already can't pay off your monthly debt bills you should think very hard about taking on more debt. At some point you have to defer spending instead of accruing debt.

## What to watch out for?

Treating technical debt as avoiding work instead of deferring work. It is common to say "if we do X this way that accrues technical debt". People hear "I want to gold plate this but you can invest less and still have it". Better to talk about whether to delay the implementation (and to when!). Or whether to cut scope with no inferred expectation the thing will still be done.

# Repeating the tl;dr

Avoid saying technical debt. Instead, say what you mean. 

Subsequently:

## Any technical improvement that can be done in the course of your work, should be done.

We don't budget time for writing tests or searching StackOverflow. Many small changes will have a large cumulative impact without needing others working in or with the team to wait.

## Any technical improvement that can't be done in the course of work should be described, proposed, and measured.

Anything else is often "something the team wants to do". See categories 2 and 3. They should be described and capture the impact of doing or of not doing that work. They can then be prioritised, and reported on. In other words it is treated the same as a request from outside of the team.

