---
title: "I shipped 1000 PRs in a year, AMA"
layout: "post"
permalink: "/2026/02/deca-hundy.html"
date: "2026-02-11 08:00:00"
description: "How I approach pace of work"
category: "how-do-i"
tags: ["how-doi", "working-out-loud"]
---

I shipped 1000 PRs in the last 12 months at [PostHog](https://posthog.com). And someone asked me how I do it... let's see if i know.

### preamble

* yes, yes, I know you don't think I should count PRs
* when a measure becomes a target it stops being a useful measure
* embrace yourself

### advice

* it is running not cycling
* small steps ftw
* practice like a jazz musician
* love making things
* one more iteration

<!--more-->

## yes, yes, I know you don't think I should count PRs

So, first something important...

Counting PRs is a very poor metric for measuring progress. Someone who ships 10 PRs has not provided a guaranteed ten times the value of someone who ships one PR. 

I'm not telling you to count PRs. Or to worship the github tile graph. 

But....

Yes, weighing yourself is a bad way of checking if your last meal was healthy. 
Yes, merging a PR is a bad way of checking if you just provided any value.

But _not weighing yourself_ is a great way to put on weight without noticing.

And _not measuring what you ship_ is a great way to accidentally ship less value.

However...........

# "when a measure becomes a target it stops being a useful measure": Charles Goodhart in preparation for my birth

Taking a look at how many PRs or lines of code people ship _is_ a measure of what people are doing. It's vague and lossy but it's a starting point.

And, yes, of course, someone could ship lots of PRs but they're no good or only ship one thing a week but it's super impactful. 

*So even if you use it as a measure it should not be your only measure of progress*

But, importantly, if you tell people "number of PRs is related to promotion review" then they _will damn well make sure they ship more PRs_ without that being related to actual value to users.

It is no longer a useful measure of progress _because_ it became a target.

# embrace yourself

didn't that feel nice?

no, not like that

Throughout my career I've been told I spin too many plates and to try and reduce my work in progress. I tried really hard to lower personal WIP and it was sooooo much effort.

My colleague Marius at PostHog said (roughly): "you always apologise for spinning plates, but you're good at it. why don't you try to get better?"

So, I've done that. I've accepted that I am easily distracted and that I will start many things. And I've concentrated on getting better at making sure the plates I'm spinning are moving forward. And throwing away the ones that are just distraction.

I've _started_ more than 1000 PRs but recognised the ones that aren't going anywhere.

For _you this will look different_. You might have to not listen to music with lyrics. You might need to make sure you go for a walk in the morning. Or plan blocks of the day with zero distractions.

My advice would be - stop listening to advice that makes you fight your nature. Just because someone else wants to work on one thing at a time doesn't mean you should. And just because I can have 23 open PRs right now and be on top of my work doesn't mean you should.

----

Ok, now that I've told you to not listen to other people's advice.

I will dress in a robe, walk down from the holy mountain of the github tile graph, and hand down my advice of  what I believe contributes to my productivity:

# it is running not cycling

I used to cycle a lot and having struggled up a big hill it was super cool to stop pedalling and coast down the other side. Then I started running, and having struggled up the big hill I discovered I still had to put in effort to run downhill. Even if gravity was helping me if I stopped moving my legs I stopped moving.

Delivering valuable software to users is running, not cycling. If you stop shipping your momentum is quickly lost.

It is up to you to move your legs. To bring the appropriate intensity and effort.

Want to ship a lot? Just do the work...

# small steps ftw

I have seen time and time again that small, concrete steps that you can explain, complete, and measure are the best way to make progress. 

See "But why regularly measure" in [one of my earlier weblogs](https://pauldambra.dev/2018/01/direction.html) 

If you feel stuck with the coding, break it into a smaller piece. Not sure how to do the work? Figure out what the simple pieces are and start with those. If the remaining pieces are "too big"  or "too hard" figure out how to change the system so the solution changes and is smaller or easier.

Often, I will make one big PR that covers the whole change to prove it works. Then break that into smaller pieces that refer back to the whole. To make it easier to review or deploy.

# practice like a jazz musician

When I was younger I was labouring under the misapprehension that I was going to change the world of music. And I was lucky to spend some time with some people who were amazing musicians.

They would practice frequently and deliberately. They were purposefully aiming to get better at the little things that made them better at the whole.

Later I spent time with folks talking about the craft of software engineering. Practising skills like TDD and refactoring. 

The little things that make you better at the whole.

Ah, but Paul this new world of agentic software engineering makes skills like that outdated and unnecessary.

![Andrej Karpathy quote](/images/andrej-karpathy-programming-is-changing-so-fast-v0-xs431byeeikd1.webp){: loading="lazy"}

I love this quote from Andrej Karpathy

And I've found the same... If the prompt is important then knowing what to prompt is important. 

And when the prompt isn't enough to get the job done being able to sketch enough code to give a better start to the agent is important.

In both cases you actually have to know what you want. And practicing what good software, or good architecture looks like is still a differentiator. 

I'd add practicing writing good prompts and managing context well as new skills that it is worth practicing.

Be purposeful about improving your ability as a person that provides value through creating and changing software. Watch what you do, see what makes it better, double down on those things. 

Avoid through practice and diligence ever doing the wrong thing harder.

# love making things

I make things all the time. I am sad when I don't get to make things. This is a vocation for me.

Nobody points at the musician that plays music for the sheer joy of it and says:  "ha, look at that loser. playing music even though they're not getting paid for it"

So, in the evening when I've finished getting the kids to bed. I sit and fiddle with software while I watch TV or listen to music.

I am incredibly lucky to have found something that gives me joy and makes me money.

Not a vocation for you - ok, cool. Live your life as you see fit. But one of the ways that _I_ am productive is that this is a joyful vocation. Also, if software is not your vocation, why the heck are you reading about how to ship 1000 PRs in twelve months?! Go, ride horses or fix gates or whatever the thing is that _does_ bring you joy 💖

# one more iteration

It feels like it goes without saying that iteration is good... but...

> Iteration is the process of repeating a set of steps or instructions multiple times, often to reach a specific goal, solve a problem, or improve a result. 

"One more iteration" is a phrase that Tim at work uses to push us to think about the quality of what we build...

OK, you did something. Stop and ask: "am I really finished?"

How do _I_ know if I'm really finished?

* are people using it?
* do they like it?
* did it move the needle the way I expected?
* would I know if it was broken?
* now it is functional does it need to also be delightful?
* does it help me see what should come next?

I think this sits really wonderfully with "small steps ftw". Iteration of large blocks of work is inherently slower than iteration of small steps.

The benefit of small steps is you can be nimble in response to what you learn.

Worse... Something that takes a month to put together will build up a lot of weight in your subconscious. It's hard to throw it away or change it because of the time you have sunk into it. Not only are you less nimble, you're less likely to correct your course.

### A concrete example of how i do small steps and iteration...

A customer reported they were unhappy with filtering in our tool. It was multiple clicks to get to the point where they had type-ahead search. And that was frustrating for them. 

Frustration is no bueno, so I started spinning a new plate. I mocked up a solution for them very quickly and shared a video.

They loved it. 

BUT I OPTIMISE FOR ITERATION AND SO I DID NOT SIMPLY SHIP IT

I wrapped it in a flag and released it just for our team and that specific user that I was talking to 

I got fast feedback that they did not like it. They liked the description, and they liked the demo. But what people think they will like and use is not always what they will actually like and use.

In practice by optimising for one journey through the filtering UX I had made other journeys harder. I wouldn't have known that if I didn't think about how to release this in a way that meant I could check if it was any good.

In the end, this took four attempts to get right.

And now I have rolled out the flag to all users. After an experiment over those multiple iterations showed folk came back and searched more using the new versions of this change.

But rolling out the flag isn't the end of the work. I'm now working on tidying up the code that was there so that I could dual run and measure the change. I've got to finish updating the documentation. I need to check that users behaviour really does change over coming weeks and react to that. So there are still more PRs to come from this work.

# An inspirational sign-off?

The value here isn't that I shipped lots of PRs. The value is that I work in small steps, and I check direction in between them. That I can loop between what I learn and what I can do next to learn more. 

How you do that might be different, perfect! But my advice: do that.
