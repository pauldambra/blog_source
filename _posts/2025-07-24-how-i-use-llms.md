---
title: "How I use LLMs?"
layout: "post"
permalink: "/2025/07/how-i-use-llms.html"
date: "2025-07-24 08:00:00"
description: "How I use LLMs"
category: "self-reflection"
tags: ["self-reflection", "working-out-loud"]
---

I remain very cynical about the current high-water mark for LLMs and augmented coding... but at the same time I use them every day and I don't think they're finished improving.

Let's ~~growth hack blog visitor numbers~~ record how I use them today as a little reflection on where I think they work and where they don't. Something I can revisit as the tech (and my skill with it) improves

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

I was largely self-taught as a developer and (after vbscript 😱) I started with DotNet. I found JetBrains Resharper early on and never looked back. The assistance in the IDE to write, refactor, and improve code was game-changing. I don't begruge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# Do I think LLMs do good work?

It's like having a startlingly talented, but very overconfident, inexperienced colleague

They will swing from correcting you on the intricacies of some detail of technology to doing blindingly stupid things like naming variables with one of your competitors company names in them

And just like the work of any colleague where you bear more responsibility. It is on you to own making sure the work is good. If you're helping someone with less experience than you the mistakes are yours, don't blame the colleague / LLM

And just like working with any colleague... you can do more together than you could before - **once you know how to work together**

As an example, while I'm writing this Claude Code is writing some tests for me. I just did a "mean colleague" trick. I went in and commented out the implementation - and the tests carried on passing.

![the over confident colleague](/images/2025/07/over-confident-1.png){: loading="lazy"}{:loading="lazy"}

The LLM fixed that and we shipped the PR. 

I find faking timers in Jest super confusing and couldn't figure it out... the LLM could 🤝

# Things I'm totally sold on

## Research for me

I tend to use ChatGPT for this but only out of habit. I not-very-fondly remember days of sweating over documentation and blog posts while trying to figure out something. 

Or, even worse, searching for your problem and finding a single hit... 

a stack overflow question... 

with no answers... 

from years ago...

that you asked and have no memory of

🫠

Now, I can delegate that to the LLM. It does that groundwork, responds to follow-ups. ~~Can't~~ Doesn't care when I ask silly questions. 

I can do something else with my time while the legwork is being done.

### Warning?

You have to remember that confabulation exists. I ask it for sources and go check for myself. Because I'm confirming and critiquing (instead of doing the groundwork) it's quicker and easier work. 

Also.... OMG if it does maths for you, make sure to double check the numbers. It can quickly go off the rails.

# Simple tasks

As mentioned above... this morning I've got a couple of tricky things to figure out... and I wanted to write some tests on a bit of code that had let me down in one of our SDKs.

So, in the background Claude can figure out why the tests weren't working and get them working. Then I check that work, together we correct it. 

In reality that probably saved me an hour of work (maybe less but definitely not more). 

Could I do that every day? That's heading for most of a working week each month.That's quality memes on Slack time, practically for free!

### Warning?

I'm pretty good at context switching, my life forces me to be. If you're not, you should figure out a different way of doing this. 

And you're responsible for this work... even though you didn't write it. You still need to engage your brain. The machine isn't thinking. And the more nuance in the task, the more opportunity for it to confidently do something very silly

# Things I'm partly sold on

## Explaining complex things

The LLM is your over-confident colleague with arcane knowledge. You can ask: "Hey, I'm trying to figure out why my kafka consumer is timing out sometimes. Explain how a nodejs consumer behaves during cooperative rebalance and why it might time out."

And it will confidently share exactly why that is happening. Digesting the docs and the 1000s of blog posts. It will draw diagrams and propose solutions. Amazing learning tool.

I often work with open source tools that do complicated things I don't fully understand. Being able to ask "what does this arcane few lines of code do". To get a quick start on figuring something out is super useful.

### Warning?

It will also sometimes confidently explain _absolute nonsense_. And when you say "but the nodejs consumer doesn't have that method". It will reply "Thanks! You're absolutely right." And then explain something else just as confidently. 

## Being your army of interns

You can run more than one instance of a tool. And give each of them a different task. In theory that's a multiplier since you can have more than one "intern" doing work for you at the same time.

I've now got two copies of our main repo on disk so that I can happily have two totally separate streams of work.

### Warning?

Starting lots of things is not as powerful as finishing lots of things!

Also, personally, I purposefully don't have a job as a tech lead at a company that employs inexperienced folk and then expects the tech lead to make sure things stay on track. I've had that job, it's a valid company strategy, it's not my jam.

I enjoy when I'm making software and I'm not a massive fan of rounds of reviewing PRs with a colleague that I can't simply trust. And you can't simply trust these machines. So, there's a worfklow here that is a multiplier which I haven't quite figured out... but the risk is that I end up squashing the fun bits of my job, and accidentally shipping a bunch of rubbish (as opposed to my current approach of enjoying the process of shipping artisanal, hand-crafted rubbish)

#### Warning 2?

They're not actually very good software engineers... particularly since most of the data they've ingested about software engineering is "blogs on how to start something from scratch". So, if that's not the task. Then I find it often harder to prompt an LLM to do than to do it myself

Case in point...

While I was typing this post Claude was doing the work to duplicate a data management section of the application. I wouldn't have to think to do this, so giving it to a machine that isn't thinking _should_ be OK.

But in the end I did the job myself...

There was just enough nuance that Claude was making a mess of it.

Maybe I'm not good enough at prompting.

Maybe I'm giving it a job it's not ready for.

But there'a a lot of snake oil to be sold in the gaps there...

For example...

![the over confident colleague 2](/images/2025/07/mistake.png){: loading="lazy"}{:loading="lazy"}

I pasted in the error message after the first set of changes it made. It decided that the problem was TypeScript was out of synch. So, it did some stuff with `touch` and `echo` insisting all along that typescript was confused. 

So I checked and, actually, it was using packages without installing them. This over-confident thing is amazing and horrifying at the same time.

## Reviewing your PRs

Machines don't get bored or distracted (yet). So having a PR reviewer that can look at 78 changes in a rename or move refactor that won't get blind to the one difference where there's a mistake or a typo is pretty powerful. I've tried three reviewer tools. They're all about as good and bad as each other.

Personally, I really hate the summary of the PR they all do. But then I've got colleagues that hate writing PR descriptions I bet the summary is useful for them.

### Warning?

It is not thinking, just pretending to. So when you get "nit pick: the blah should be wired to the clink expander" it is fine to just hit "resolve conversation" in GitHub. I think these are a nice pre-filter for human reviewers but they're nowhere near as useful as being able to tag a person you trust and respect.

# Things I'm not sold on

## Writing tests with an LLM

I don't do TDD any more. Often I write tests after the implementation... shhh don't tell anyone. But for some types of tasks I do like to write a test or two first. Particularly "someone says this is broken and needs fixing, is it?"

Even pointing the LLM at existing tests I find they tend to churn out rubbish tests. I think that's probably because they've ingested the internet and there are so many bad examples of writing tests on the internet.

### Whatever the opposite of a warning is?

They don't get bored and have ingested the whole internet. So I find they're really good at "i've started writing parameterised tests, please add more examples to test edgecases in blah processing" or "look at the implementation file X and suggest missing tests or tests that can be removed in this test file". 