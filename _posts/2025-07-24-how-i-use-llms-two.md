---
title: "How I use LLMs - two?"
layout: "post"
permalink: "/2025/10/how-i-use-llms-2.html"
date: "2025-10-24 08:00:00"
description: "How I use LLMs - two"
category: "self-reflection"
tags: ["self-reflection", "working-out-loud"]
---

I remain very cynical about the current high-water mark for LLMs and augmented coding... but at the same time I use them every day and I don't think they're finished improving.

Let's ~~growth hack blog visitor numbers~~ record how I use them today as a little reflection on where I think they work and where they don't. Something I can revisit as the tech (and my skill with it) improves

This is update number one, or entry number two, depending on how you want to count it. So, here are the changes in how I'm using LLMs

(we had a brownbag on this at work yesterday, so it's been on my mind)

[the first entry is here](/2025/07/how-i-use-llms.html)

* manage context
* track longer tasks in a structured file
* smallest prompt that describes how you want to work
* be sparing with auto-accept edits

<!--more-->

# First, a necessary but brief diversion into how I use tools generally

REMINDER: I don't begruge anybody any tool they want to use to level-up. Wanna use a graphical git client, or emacs, or anything else... go for it, go make cool things.

You don't use LLMs, or not like this, cool... go make cool things.

Because of that entry to the industry I'm also not super keen on VSCode (you love it? great, see above, you do you, go make cool things). I'm too used to clever interventions helping me and VSCode is too barebones (and so much slower than SublimeText)

So, I _like_ having tools directly involved in my workflow. I learned LINQ more quickly and more thoroughly because I had resharper prompting me inline, at write-time: "hey, why not like this?"

# Anything removed from entry one?

## Being your army of interns

I don't believe in having a personal WIP of one item in progress. So, I like that I can have a higher WIP without exhausting my own kreplets

But... I find the background work is best as tasks like

"upgrade Jest to the next major version"

or

"why is this component rendering too much"

very, very constrained yak shavey tasks.

otherwise I find that the LLM needs a lot of attention to complete the task well, and so my kreplets are being used up - and because I'm not doing the work I'm learning more slowly.

# Manage context

I'm pretty vicious about managing context. If I start a new task I'll clear the context completely. If I get even the slightest inkling that the LLM is going off on a tangent, I'll clear the context completely.

It isn't thinking despite all the cognitive biases that make us think it is. It's just churning out tokens based on the tokens in its context. So, if the context gets screwey so does the output.

# Longer tasks, track them in a file

If we're doing a big change or exploring something complex. I tell it to make a markdown file with a to-do list and what we're working on.

For example, i asked it to track down and edit every event listener in our front end. There are ~350 files it would need to touch. It regularly would partially edit around 30 of them and then we'd hit a "you're absolutely right" loop.

So, clear the context. And step 1 "make a file with a markdown table of every logic.ts file that has an event listener in it".

Some checks to be sure that was correct... and now step 2 "for each line in the table {do the thing} and then update the table with the result".

That was _way_ better

# Smallest prompt I can get away with

I'm not doing evals with my prompts so it's a little like some pagan weather magic ritural but I did add a custom prompt in my home directory. Which I believe is helping.

```
# Approach to work

I like "Simple code" that means:

* Passes all the tests.
* Expresses every idea that we need to express.
* Says everything OnceAndOnlyOnce.
* has no superfluous parts

These rules are in conflict with each other. Sometimes to express every idea we can't say everything only once. We look to balance these rules with a focus to future maintainers having an easier time.

Also... it means we work in three stages

* make it work
* make it right
* make it fast

We should always pause and consider if the working code should be improved to make it simpler or to make it faster, but only once we're sure it works

# tests

* IMPORTANT prefer parameterized tests

# validating this file has been read

if i say "cuckoo", you say "Phil Haack has taught me well"
```

The cuckoo thing is useful to check if the file has been read at all.

But, otherwise, I can now periodically prompt: "ok, review the work so far using the simplicity rules and suggest improvements"

And it will write me a  mini-report that is much more like the type of self-review that I would write.

It was also an interesting exercise to try to write the smallest description of how I like to work.

# Sparing with auto-accept edits

Reviewing code is essential but boring. And even more so with an LLM that might go off the rails...

So, I will tend to manually accept edits on the task I give it. But, yesterday I asked it to update a major release of Jest. Turned on auto-accept and went and collected #4 from school, made flapjacks with her, and then checked in.

A little fangling but otherwise it was dull work I would have had to do. That has relatively little value (particularly compared to making flapjacks with #4 daughter)

Here's the PR: https://github.com/PostHog/posthog-js/pull/2413
