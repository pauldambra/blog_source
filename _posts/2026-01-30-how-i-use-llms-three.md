---
title: "How I use LLMs? - three"
layout: "post"
permalink: "/2026/01/how-i-use-llms-3.html"
date: "2026-01-30 08:00:00"
description: "How I use LLMs - three"
category: "self-reflection"
tags: ["self-reflection", "working-out-loud"]
---

I remain very cynical about the current high-water mark for LLMs and augmented coding... but at the same time I use them every day and I don't think they're finished improving.

Let's ~~growth hack blog visitor numbers~~ record how I use them today as a little reflection on where I think they work and where they don't. Something I can revisit as the tech (and my skill with it) improves

This is update number two, or entry number three, depending on how you want to count it.

[the first entry is here](/2025/07/how-i-use-llms.html)
[the second entry is here](/2026/01/how-i-use-llms-2.html)

* XP pedant agent
* primarily using LLMs
* throw away way more work
* be very strict with what i _do_ type
* i approach understanding code differently

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

I was largely self-taught as a developer and (after vbscript 😱) I started with DotNet. I found JetBrains Resharper early on and never looked back. The assistance in the IDE to write, refactor, and improve code was game-changing. I don't begrudge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# XP pedant agent

I love the [XP simplicity rules](https://wiki.c2.com/?XpSimplicityRules) for guiding decision making... 

* Passes all the tests.
* Expresses every idea that we need to express.
* Says everything OnceAndOnlyOnce.
* Has no superfluous parts.

I like that they're in tension with each other. 

I've added them to my [AGENTS.md](https://github.com/pauldambra/dotfiles/blob/main/ai/CLAUDE.md) and if it forgets I can prompt it "hey, apply the simplicity rules".

Often the change it makes is the one I would have manually made.

# Primarily using LLMs

Over the last three months particularly the capability of LLMs has transformed. I can now go whole days mostly prompting an LLM and writing only a fraction of the code myself. This is... fine.

I've been working on super complex, tricky to find memory leak problems. I would not have had the patience to notice some of the things that the robot can when i provide it with context from my investigations.

And while it's working on the next step I can be improving my investigation, or catching up on Slack, or taking my kids to school. 

I don't feel like I've lost anything by not (always) typing out the code directly. And since [I taught the robot some extreme programming techniques](https://github.com/pauldambra/dotfiles/blob/main/ai/CLAUDE.md), i find i don't need to re-work much at all.

I genuinely didn't think I'd switch this much... and like all sticky tools I didn't have to think about it. The tool hooked me.

That said... i don't like vibe coding... I'm not asleep at the wheel and do care about the diff that's being generated. So I feel slightly vindicated by this research from Anthropic https://www.anthropic.com/research/AI-assistance-coding-skills

> In a randomized controlled trial, we examined 1) how quickly software developers picked up a new skill (in this case, a Python library) with and without AI assistance; and 2) whether using AI made them less likely to understand the code they’d just written. 
> We found that using AI assistance led to a statistically significant decrease in mastery.
> ...
> Importantly, using AI assistance didn’t guarantee a lower score. How someone used AI influenced how much information they retained.

# throw away way more work

Since I didn't type it, I don't feel invested. I dump a prompt in. Come back, see what came out. And sometimes I just throw it away. It doesn't help as much as I expected, or a UI change doesn't look as good as I hoped. 

Without feeling invested in the creation I am a little more rational about whether to throw it away. 

It's cheap to do many things at once and keep the useful things.

# be very strict with what I _do_ type

This is an addition to "manage context".

Sometimes I find myself writing a huge prompt. I have low tolerance for this. Or I find the task is spinning and churning and going nowhere. So, instead, when I recognise that I stop, I clear the prompt, and I spike the work. Then when I have a good enough sketch I point the robot at the changes and say "hey, like this". I believe we do understand some problems better through trying to solve them.

The robot is still more stupid than it is clever. So, giving it code is a good way to clever it up.

It is still valuable to be a decent software engineer. But it might be more valuable to be a decent software engineer who dumps a sketch into an LLM. (if it isn't now, and they can keep improving, then it will be soon)

# I approach understanding code differently

This one is difficult for me to accept, but it's snuck up on me and over the last few months changed how I work.

The cost of writing code is falling *and* the cost of understanding code is falling.

When the cost of a thing fundamentally changes, you have to change your approach.

"Hey robot, write a script to validate the blah does thingy (or not) when the wotsit is twanged"

"Hey robot, why does the clinkexpander accept a boolean?"

"Hey robot, how does the clinkexpander work?"

"Hey robot, what does the clinkexpander actually do?"

Tasks that would have taken me hours or days or weeks in the past are genuinely done in minutes now.

I've spent a big chunk of time recently feeding heap snapshots to the robot. I can only give huge thanks I've not had to manually grok this myself.

Is the robot perfect? No. not even.

Is the robot a good software engineer? No. not even.

Is it silly to ignore the fact that the robot does not need to be perfect or good for it to be a fantastic tool?

yes, veryeven.

the game has changed. pandora's box is open. the robot is here to stay.

It reminds me of once... I used to work with someone who had worked mostly with signal processing baked into hardware. Very painful to discover a bug after release. We were sat together and I changed a field in a JSON response. He asked in a mid-panic: "but how many bytes will that add to the payload?". Genuinely confused, I said: "I've barely ever had to care... I don't think it matters"

We're on the verge of that kind of change. We're not there ffs but some point down the road someone is going to ask "but isn't that AI slop" and their colleague will answer, genuinely confused: "yes, why?"

Will some of that software be bad? yes
always-has-been-dot-meme
