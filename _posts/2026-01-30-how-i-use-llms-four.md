---
title: "How I use LLMs? - four"
layout: "post"
permalink: "/2026/03/how-i-use-llms-4.html"
date: "2026-10-03 08:00:00"
description: "How I use LLMs - four"
category: "self-reflection"
tags: ["self-reflection", "working-out-loud"]
---

I remain very cynical about the current high-water mark for LLMs and augmented coding... but at the same time I use them every day and I don't think they're finished improving.

Let's ~~growth hack blog visitor numbers~~ record how I use them today as a little reflection on where I think they work and where they don't. Something I can revisit as the tech (and my skill with it) improves

This is update number three, or entry number four, depending on how you want to count it.

* [the first entry is here](/2025/07/how-i-use-llms.html)
* [the second entry is here](/2026/01/how-i-use-llms-2.html)
* [the third entry is here](/2026/01/how-i-use-llms-3.html)

* basically never braincode
* it's still about your brain
* hot take

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

I was largely self-taught as a developer and (after vbscript 😱) I started with DotNet. I found JetBrains Resharper early on and never looked back. The assistance in the IDE to write, refactor, and improve code was game-changing. I don't begrudge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# basically never braincode

Over recent weeks agents and their UX has meant I only have to actively write code when I choose to. It would be possible to completely work via agents.

It really is only necessary to "braincode" when it is easier for me to sketch a solution than to prompt an LLM to write it. Even then I would quickly fall back to "hey agent, here's what i mean. finish this off"

# it's still about your brain

You'll see a lot of people saying variations on "it was never about the code" or "it was always about what you chose to make not how you made it". And tbh I 90% agree with them. The code was _a_ hard part but it wasn't the only hard part. 

We've automated a big chunk of code understanding and generation but we still need to choose the direction. Reaching through the system of systems you can affect to try and deliver value.

Astronaut-with-pistol-dot-meme

# hot take

Code is no longer for humans.

We are seeing the end of the era of code needing to be in a format that humans can directly parse. Languages are already abstractions on top of what is really being executed. The format being determined by the available technology to let humans create code. And by the needs of the humans at understanding the code.

In a world where we can say "hey robot, how does the Foo component manage the ClinkExpander interactions". It no longer matters what the underlying code looks like.

My expectation is that there are already folk working on a storage format that is accessible to agents but loses the trade-offs it had to make for human readability. Maybe a binary DAG format since we don't  really need the translation from an abstract syntax tree in memory into text anymore.

If the agents keep getting better, my expectation is that I need to be able to ask for representations of the code that help me and them interact with it way more than I need a flat text file.
