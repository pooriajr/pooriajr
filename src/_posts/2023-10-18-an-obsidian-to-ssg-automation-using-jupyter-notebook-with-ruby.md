---
title: An Obsidian to SSG automation using Jupyter Notebook with Ruby
---
Well, that's a mouthful of a title.

But yeah, I've been wanting to streamline my publishing process for these daily blog posts, and  I thought it would be a good way to practice writing a simple Ruby automation.

I've long been jealous of python users and their Jupyter Notebooks, which seem so good for experimenting and iteratively building something where you don't really know how it's going to all come together.

Turns out, there's a plugin to use Ruby in Jupyter! And it works great.

My automation script expects a title, searches Obsidian for post with that title, and copies it into my Static Site Generator's file directory. Then I just need to push to git and I'm published.

There's a bit more going on here than merely copying a markdown file from one directory to another. Read on to see what I mean.

The most important part is how it handles images. The worst part of writing a post straight in my SSG is trying to insert images. I have to move the image I want to use to the proper folder, decide on a name, and then type out the path to that image file in my post. Repeat for multiple images. It's clunky.

But Obsidian makes it easy to upload photos - just drag and drop. So before, I was writing in Obsidian, dropping the images, and then doing the annoying manual work I outline above.

Now my script copies the photos for me! I have my cake and eat it too.

It also assigns the date automatically, or searches the Obsidian post for a frontmatter date.

And it converts my title into the proper format for the filename.

There's a few more things I could add, namely link handling, but I'm good with it for now.

Experiment successful.