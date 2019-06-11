---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Bayesian Specification Inference"
summary: "We introduce a Bayesian formulation for specification inference that enables us to learn logical task specifications with very few examples."
authors: []
tags: []
categories: []
date: 2019-06-10T18:15:02-04:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: "Smart"
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

#header:
#  image: "bsi.jpg"
#  caption: "Bayesian Specification Inference"
---
![Bayesian Specification Inference](/img/bsi.jpg)

{{< youtube u6_YTWhrA0c >}}

Imagine showing a friend how to play your favorite quest-based video game. A mission within such a game might be composed of multiple sub-quests that must be completed in order to complete that level. In this scenario, it is likely that your friend would comprehend what needs to be done in order to complete the mission well before he or she was actually able to play the game effectively. While learning from demonstrations, human apprentices can identify whether a task is executed correctly well before gaining expertise in that task. Most current approaches to learning from demonstration frame this problem as one of learning a reward function or policy within a Markov decision process setting; however, user specification of acceptable behaviors through reward functions and policies remains an open problem. Temporal logics are frequently used as a language for expressing desirable system behaviors, and can improve the interpretability of specifications if expressed as compositions of simpler templates.

The flexibility of LTL for specifying behaviors also represents a key challenge with regard to inference due to a large hypothesis space. We address this by restricting the hypothesis space to logical compositions of certain relevant behavior templates, thus encoding useful inductive biases. Another key challenge is the inherent ambiguity of the task where multiple formulas explain all the observed demonstrations equally well. To address that, we propose a Bayesian formulation of specification inference where the output is not a single formula, but a posterior distribution over formulas conditioned on the observed demonstrations, thus automatically representing the ambiguity and the uncertainty associated with it.



<!-- We were able to successfully demonstrate the utility of specification inference on multiple domains. The first was a synthetic domain consisting of an agent moving in a 2D plain with points of interests and threats. The specifications included a set of points of interests to visit, the set of threats to avoid and a set of admissible orderings over the points of interest -->

<!-- The current repertoire of tasks that robots can plan for and can learn from demonstrations is quite limited.  -->

<!-- Traditionally Learning from Demonstrations (LfD) has been viewed in the context of inverse reinforcement learning (IRL). However this formulation of LfD restricts the types of task that robots can learn to the ones that are Markovian -->
