---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Planning with Uncertain Specifications (PUnS)"
summary: "Planning with specifications as a belief over LTL formulas"
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

{{< figure library="1" src="puns.png" title="" >}}


Consider the task of setting a dinner table. It involves placing the appropriate serving utensils and silverware according to the dishes being served. Some of the objects need to be placed in a particular order as they might be stacked on top of each other or due to cultural traditions. Many real-world tasks demonstrate such temporal characteristics that can succinctly modeled with linear temporal logic (LTL).

However defining sound and complete task specifications in LTL is non-trivial, and it remains desirable to allow robots to infer the task specifications through intuitive modalities like demonstrations, spoken instructions or corrections. Thus specifications for a task can at best be stated as a belief over candidate LTL formulas. An ideal learner would try to simultaneously satisfy as many of these candidate properties as possible while performing the task.

We tackle this problem in this work, where we introduces a novel problem formulation for planning with uncertain specifications (PUnS). To do that we first identify four evaluation criteria than capture the semantics of satisfying a belief over LTL formulas. These include:

- ***Most likely:*** Here only the formula with the highest probability in the belief distribution is satisfied, the other formulas are ignored.
- ***Maximum coverage:*** The largest set of unique formulas in the belief distribution is satisfied.
- ***Minimum regret:*** The hypothesis averaged satisfaction of the belief distribution is maximised.
- ***Chance constrained:*** The maximum probability of failure is determined by the user and the distribution is modified to only capture a set of formulas that have a cumulative probability larger than the failure probability.

We demonstrate that the choice of evaluation criterion results in a trade-off between fliexibility in task execution and risk-aversion. Finally we also demonstrate that every instance of a PUnS problem can be compiled into an equivalent reward machine. This is an equivalent Markov decision process (MDP) for the original non-Markov PUnS problem.

We demonstrate our technique on the table-setting task where the task specifications were inferred from 30 demonstrations, and the policy computed using the PUnS formulation sets the table with a very low error rate (0.001%).
