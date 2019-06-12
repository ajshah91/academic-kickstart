---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Planning with Uncertain Specifications (PUnS)"
summary: "What should you do when you are uncertain about what needs to be done? Planning with specifications as a belief over LTL formulas"
authors: []
tags: []
categories: []
date: 2019-06-11T14:26:08-04:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: true

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

{{< figure library="1" src="puns.png" title="Planning with Uncertain Specifications" >}}


Very often the specifications for a task can at best be stated as a collection of logical preferences. This is especially true if the specifications are constructed by preference elicitation from experts or by inferring specifications as a belief over logical formulas from examples. Quite often it might be impossible to simultaneously satisfy all the logical formulas in this collection, so it is desirable to best adhere to the entire distribution rather than individual formulas within its support.

While it is easy to define the semantics of satisfaction of a single formula, in this work, we have identified four evaluation criteria that capture the semantics of satisfying a belief over logical formulas. These include the following:

- ***Most likely:*** Here only the formula with the highest probability in the belief distribution is satisfied, the other formulas are ignored.
- ***Maximum coverage:*** The largest set of unique formulas in the belief distribution is satisfied.
- ***Minimum regret:*** The hypothesis averaged satisfaction of the belief distribution is maximised.
- ***Chance constrained:*** The maximum probability of failure is determined by the user and the distribution is modified to only capture a set of formulas that have a cumulative probability larger than the failure probability.

While traditionally, planning problems have focused on a single user specified formula as specifications, they cannot handle these cases where
