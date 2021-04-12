---
layout: default
---
# Internal Documents Guide

## Slideware

Presentations given internally should conform to the given Slideware template. A template is available on Google Slides.

{% assign slidewareUrl = "/assets/pdf/slideware.pdf" | relative_url %}
{% pdf slidewareUrl no_link %}

## Memorandums

Memorandums can be constructed using the following template:

{% assign memoUrl = "/assets/pdf/memo.pdf" | relative_url %}
{% pdf memoUrl no_link %}

## Business Letters

Business Letters should include the company letterhead and use a traditional typeface:

{% assign letterUrl = "/assets/pdf/letter.pdf" | relative_url %}
{% pdf letterUrl no_link %}