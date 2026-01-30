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

This is update number three, or entry number three, depending on how you want to count it. So, here are the changes in how I'm using LLMs

[the first entry is here](/2025/07/how-i-use-llms.html)
[the second entry is here](/2026/01/how-i-use-llms-2.html)

* primarily using LLMs
* manage context
* throw away way more work
* be very strict with what i _do_ type

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

I was largely self-taught as a developer and (after vbscript 😱) I started with DotNet. I found JetBrains Resharper early on and never looked back. The assistance in the IDE to write, refactor, and improve code was game-changing. I don't begruge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# Primarily using LLMs

Over the last three months particularly the capability of LLMs has transformed. I can now go whole days only prompting an LLM and not writing any of the code myself. This is... fine.

I've been working on super complex, tricky to find memory leak problems. I would not have had the patience to notice some of the things that the robot can when i provide it with context from my investigations.

And while it's working on the next step I can be improving my investigation, or catching up on Slack, or taking my kids to school. 

I don't feel like I've lost anything by not typing out the code directly. And since [I taught the robot some extreme programming techniques](https://github.com/pauldambra/dotfiles/blob/main/ai/CLAUDE.md), i find i don't need to re-work much at all.

I genuinely didn't think I'd switch this much... and like all sticky tools I didn't have to think about it. The tool hooked me.

# Manage context

I don't think I'm saying anything new. You have to pay attention to whether the robot is losing it's "mind". When it does, ask it for a summary. Copy that. Clear its context. Paste in the summary and carry on.

Just like any colleague if you distract it with a long story it won't be doing work, it'll be processing your noise. So, I find I stop and think more often. And then decide what to do next. That's an unexpected habit to be being pushed back on to me.

# throw away way more work

Since I didn't type it, I don't feel invested. I dump a prompt in. Come back, see what came out. And sometimes I just throw it away. It doesn't help as much as I expected, or a UI change doesn't look as good as I hoped. 

Without feeling invested in the creation I am a little more rational about whether to throw it away. 

It's cheap to do many things at once and keep the useful things.

# be very strict with what I _do_ type

This is an addition to "manage context".

Sometimes I find myself writing a huge prompt. I have low tolerance for this. So, instead, when I recognize that I stop, I clear the prompt, and I spike the work. Then when I have a good enough sketch I point the robot at the changes and say "hey, like this". I believe we do understand some problems better through trying to solve them.

The robot is still more stupid than it is clever. So, giving it code is a good way to clever it up.
