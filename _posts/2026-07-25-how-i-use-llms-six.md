---
title: "How I use LLMs? - six"
layout: "post"
permalink: "/2026/07/how-i-use-llms-6.html"
date: "2026-07-25 08:00:00"
description: "How I use LLMs - six"
category: "self-reflection"
tags: ["self-reflection", "working-out-loud"]
---

Let's ~~growth hack blog visitor numbers~~ and keep on recording how I use agents/LLMs today as a little reflection on where I think they work and where they don't. Something I can revisit as the tech (and my skill with it) improves

This is update number five, or entry number six, depending on how you want to count it.

* [part 1 - structured tone of fascination + scepticism](/2025/07/how-i-use-llms.html)
* [part 2 - learning how to manage and control them](/2025/10/how-i-use-llms-2.html)
* [part 3 - reluctant acceptance but also thankfulness (?) of what they do for you when you let go of control](/2026/01/how-i-use-llms-3.html)
* [part 4 - realising even though it's no longer "braincode" + no longer for humans, it still comes from human brains](/2026/03/how-i-use-llms-4.html)
* [part 5 - oh no, am i AI pilled](/2026/06/how-i-use-llms-5.html)

someone at work named the episodes for me, i love it

so now... part 6 - i think maybe everything changed

## in today's edition of AI hot takes

* saying "slop" considered harmful
* ship value, not craft
* don't read code
* manage loops and context - fuck prompts
* if you make me copy & paste a prompt you've lost me

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

I was largely self-taught as a developer and (after vbscript 😱) I started with DotNet. I found JetBrains Resharper early on and never looked back. The assistance in the IDE to write, refactor, and improve code was game-changing. I don't begrudge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# saying "slop" considered harmful

I've noticed a habit for folk reporting a bug with a system to say things like: "ugh, the clink expander doesn't work. why even ship this slop?!"

my friends, if you think there were no bugs prior to December 2025 then you were not paying attention. 

through most of 2025 if you were just shipping AI generated code without thorough checking then you were going to be in for a bad time... but the world changed in Dec 2025 and several times again through 2026.

the code written by LLMs is now at least as good as that written by the worst junior developers i've worked with over ~20 years. and sometimes much better. 

those junior developers all managed to ship value despite being inexperienced.

and the goal is shipping value

# ship value, not craft

i have long considered myself a software crafts person. attended user group meetups; run brownbags at work; practised deliberately and consistently; learned about XP, agile, tdd, and more.

why... because i believe that software gets harder to change and extend over time otherwise

and that's important because i have always been focused on shipping value to people

a problem has a solution in a context

as agents have improved the context has changed gigantically 

the problem of needing to ship value remains but the solution of software craft doesn't fit any more

software needs to be easy to change and extend **by agents** way more than by humans

we would slow down when software files became complex because they broke our meat brains... but our meat doesn't need to parse it any more, our agents will

if software is for agents not humans, then one change (whether you like or not) is...

# don't read code

to quote a (frankly fantastic) colleague:

> I'm sure when the first FORTRAN compiler was released, for a time, engineers still read the machine code output that it produced to make sure it was up to scratch.

> Who does that still? Compiler developers and nobody else.

> It will be like that for generative LLMs producing code also.

> Imagine someone making the argument that if you don't read, understand and verify all the assembly that GCC outputs then they're not a real engineer or they're somehow not doing their job.

I think about this like I am working with a team of developers. Not _in_ the team. **with** the team.

If I hire them to make an API for me. I'll write tests directly against their API maybe. Against my use of it for sure. I'm very, very unlikely to look at their code. When I'm using agents. I'm working with them, not in them. So, the code they write is simply unimportant if it works.

I have always asked three questions:

* how do you know the software doesn't do it today
* how will you know the software does do it in this change
* how will you know the software still does it the day after the deployment

the answer has always been "writing tests, gathering metrics, and talking to users"

this becomes so much more important in this new world

deciding what to build and whether it was good idea once you've finished is where you should spend your time. reading code used to support that, but not any more

# if you make me copy & paste a prompt you've lost me

i noticed i now find tools that expect me to copy their output to the next LLM annoying

the future is a world of agents interacting. not people passing text between agents. 

different people will want to grab output from the loop of genies at different points. your org might require you use a particular system or an air-gapped network or whatevs and you'll need to break the loop and move data yourself in some way.

but lots of systems will be a set of agents triggered by timers or external signals passing data and prompts between themselves... and it's gonna be super cool.
