---
title: "How I use LLMs? - five"
layout: "post"
permalink: "/2026/06/how-i-use-llms-5.html"
date: "2026-06-04 08:00:00"
description: "How I use LLMs - five"
category: "self-reflection"
tags: ["self-reflection", "working-out-loud"]
---

I have lost roughly 60% of my cynicism about the current high-water mark for LLMs and augmented coding... I am certain this last 9 months has been a significant generational change in how we can approach work.

Oh no, I'm AI pilled

Let's ~~growth hack blog visitor numbers~~ record how I use them today as a little reflection on where I think they work and where they don't. Something I can revisit as the tech (and my skill with it) improves

This is update number four, or entry number five, depending on how you want to count it.

* [part 1 - structured tone of fascination + scepticism](/2025/07/how-i-use-llms.html)
* [part 2 - learning how to manage and control them](/2025/10/how-i-use-llms-2.html)
* [part 3 - reluctant acceptance but also thankfulness (?) of what they do for you when you let go of control](/2026/01/how-i-use-llms-3.html)
* [part 4 - realising even though it's no longer "braincode" + no longer for humans, it still comes from human brains](/2026/03/how-i-use-llms-4.html)

someone at work named the episodes for me, i love it

so now... part 5 - yee haw, paul is AI pilled

## in today's edition of AI hot takes

* no longer focused on the code, 5% focus down from 95%
* i don't use these tools, i hire them into my team
* genuine frustration when they lack autonomy
* stop making me tell you when to run
* skills skills skill skills

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

I was largely self-taught as a developer and (after vbscript 😱) I started with DotNet. I found JetBrains Resharper early on and never looked back. The assistance in the IDE to write, refactor, and improve code was game-changing. I don't begrudge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# no longer focused on the code, 5% focus down from 95%

Last time I said:

> Recent improvements to agents and their UX has meant I only have to actively write code when I choose to. It would be possible to completely work via agents.

I can literally never write a line of code manually anymore and it is so ok.

Because the cost of understanding the code is basically zero now. The importance of the code being understandable is dropping.

It still has to be correct and fast but if I can't quickly grok it. I can just ask an LLM to explain it, or write some tests to exercise it. What might have taken hours in the past, I've worked on code that took me days to understand, will now take seconds.

Writing code is now far from the highest leverage thing I could do with my time

"Oh but Paul some code is very important!"

Yep, and cool, the literal code might still be the highest leverage thing _you_ can do. But it isn't the highest leverage thing I could do any more. And I'd argue for many people that's true too.

And that is truly magical because now I can care about and achieve a bunch of stuff all at the same time and that would have been impossible for 2025 Paul.

# i don't use these tools, i hire them into my team

If I am nailing two pieces of wood together it is up to me to figure out how to do it. To choose the hammer. To choose the nail. To pick the place and the angle that the nail goes in. To make sure I don't hit my thumb.

If I hire a carpenter then I make them a brew and tell them I'm here if they need me.

So, the mindset shift I'm suggesting is that I am hiring a junior engineer or product manager or whatever. And I am responsible for giving them context and guard rails. And then I let them do their work. I'm still responsible for if the work is valuable, but I'm not literally hitting the nail any more.

It changes so much about how I interact with the thing. And it lets me completely change how I work. I've moved into an executive role and I can still sling lots of code cos I don't hold the hammer, I hire the carpenter.

# genuine frustration when they lack autonomy

We run a bunch of AI review tools on our PRs. And they have varying quality. They get better over time bit by bit. And they are earning their keep (just about - although they're pretty expensive tbh)

But over the last months since part 4 I've noticed a new expectation from me... they post their comment and I think "ugh, now i have to read and act on that... such bullshit"

By comparison, I have a "PR Shepherd" skill. I've had Claude do research about XP on the C2 wiki. I've had it interview me about software engineering to see what I care about in how work is done. And I've had it review the public history of my PR reviews to see what I care about in reviewing.

And when I run that skill it does a bunch of reviews in parallel, and anything that has a single solution, it just does. You can see an example here https://github.com/PostHog/posthog/pull/61611 - I have it run and publicly comment on all of my PRs. It now feels rude to have a human review before I've had the robot find things. In the same way that for the longest time it's been rude to make a human lint your code when a tool could do it.

So, increasingly, the word machine can no longer earn its keep by only turning one set of words into another. It needs to turn that set of words into action. Just like if I hire a junior engineer and they asked me "should i fix this obvious bug" i would be frustrated.

# stop making me tell you when to run

this has a side effect... i don't want to have to remember to ask an LLM for a whole bunch of stuff. same way i don't want to have to ask my colleagues about a bunch of stuff. 

i want to say "hey, we should check the clink expander every two hours and route fanglers appropriately" and that just happens

i think the next great frontier is long-running and trigger-driven agents. and i am so excited for it

# skills skills skill skills

I mention "PR shepherd" above. It does all the mechanical work of getting a PR through review. It checks if a PR is open, opens it if not. marks it ready for review, runs a swarm of parallel reviewers and responds to them, checks external reviews and responds to them. It defers to me when it has to, otherwise it checks CI until it's green. It took me about an hour in total so far prompting to create it. And has saved me multiples of that.

Soooo much time back.

I have "Paul pair". Every time the robot finishes work or is about to ask me a question it has an instruction to run the "Paul pair" skill. Which reminds it what I care about and to only interrupt me with important things. It's mecha paul. Saving meat paul from repeating the thing i was obviously going to repeat.

I have an executive coach (admittedly not a skill). It checks granola and slack and github and the org chart etc etc and once a week tells me if I'm working on what I've said is important. Tells me what I'm missing, what patterns it sees, what the top 3 things I should do to get back on track. It's not always right, but it doesn't have to be - it's on me to manage my work and attention regardless of what advice i receive.

If you have never done it then stop what you're doing. Open a new session with your favourite robot and type "look at our conversations and tell me what repeated interactions we could automate"

Then sit back and prepare to have your mind blown.

Here are mine https://github.com/pauldambra/dotfiles/tree/main/ai/skills

# paul, you sound irredeemably AI pilled

yep, I am. sorry, it's happened. there's no going back. i've been sucked into the bubble. this is the future. 

"but LLMs gets things wrong sometimes!"

yep, and this might shock you. so do human colleagues. even incredible colleagues can do silly things. yes, reader, even I have once or twice shipped a bug

it's not about the LLM being perfect. it doesn't have to be perfect. it's about the LLM being useful. And it really f-in is.
