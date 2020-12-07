+++
title = "Model Transparency through Examples"
date = 2020-12-04T13:09:16-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = []

# Project summary to display on homepage.
summary = "What images will my classifier tag as corgis, and which ones as bread?"

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
  # Caption (optional)
  caption = ""
  preview_only = true

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

{{< figure library="1" src="bayestrex.png" title="" >}}<br/>

Does my classifier think that the image is a loaf of bread or a Corgi? Post-hoc explanation methods are gaining popularity as tools for interpreting, understanding, and debugging neural networks. Most post-hoc methods explain decisions in response to individual inputs drawn from the test set. However, the test set often fails to include highly confident misclassifications and ambiguous examples. To address these challenges, we introduce Bayes-TrEx for more flexible model inspection. It is a model- and data-generator-agnostic method for creating new distribution-conforming examples of known prediction confidence. Bayes-TrEx can be used to find highly confident misclassifications; to visualize class boundaries through ambiguous examples; to understand novel-class extrapolation; and to expose neural network overconfidence. We demonstrate Bayes-TrEx on CLEVR, MNIST, and Fashion-MNIST. Compared to inspecting test set examples, we show that Bayes-TrEx enables more flexible holistic model analysis. Our open source code is in supplemental.
