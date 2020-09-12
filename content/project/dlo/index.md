---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Manipulation planning for interlinked cables"
summary: "We introduce a task planning algorithm that sequences manipulation steps to install a set of cable harnesses in an aircraft."
authors: []
tags: []
categories: []
date: 2016-06-11T15:24:59-04:00

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

{{< youtube XKrU_Ox83cw >}}

We considered the task of installation of an interlinked set of cables in an aircraft fuselage. The cables in question are heavy harnesses of wiring that run along the length of the fuselage. The interlinks connecting the cables are fragile and can not bear the weight of the main cables; hence any attempt to manipulate the cables independently without considering these interlinks may result in damage to their electrical integrity.

Many promising approaches have been proposed towards manipulation and motion planning for a single cable with both ends manipulated, this problem requires a formulation that allows for planning with multiple cables with interlink constraints. Manipulation planning for multiple interlinked is inherently a mixed discrete and continuous problem. The cable shape and manipulator positions lie in a continuous state space, whereas the actions of clamping the cable to pre-defined clamp location, grasping or releasing a cable for a discrete state space. We tackle this in a hierarchical manner by defining a higher level task planner and a lower level motion planner. We propose the problem formulation for the higher level task planner and propose a prototype planner to generate satisficing solutions to the task planning problem.
