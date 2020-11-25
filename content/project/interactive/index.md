+++
title = "Interactive Robot Training"
date = 2020-11-25T11:29:34-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = []

# Project summary to display on homepage.
summary = "On how to train robots through demonstrations and criticism."

# Slides (optional).
#   Associate this page with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Optional external URL for project (replaces project detail page).
external_link = ""

# Links (optional).
url_pdf = ""
url_code = ""
url_dataset = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# links = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
[image]
#  # Caption (optional)
  caption = ""
  preview_only = true

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

{{< figure library="1" src="overall.png" title="" >}}<br/>


{{< youtube TMY6iOVlrr8 >}}<br/>



Defining sound and complete specifications for robots using formal languages is challenging, while learning formal specifications directly from demonstrations can lead to over-constrained task policies. We developed a Bayesian interactive robot training framework that allows the robot to learn from both demonstrations provided by a teacher, and that teacher's assessments of the robot's task executions. The key is to use an active learning approach, inspired by uncertainty sampling, to identify the most uncertain task execution. We demonstrated our approach through a user study involving both in person demonstrations and robot telecommand over the internet.
