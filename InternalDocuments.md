---
layout: default
---
# Internal Documents Guide

The source code for memos, letters, and reports can be found in the templates subdirectory [here](https://github.com/KK1423/tchnclcm300styleguide-kkpudi).

## Slideware

Presentations given by employees should conform to the given Slideware template. Be sure to use the slideware as a tool to summarize key points and deliver concepts graphically. A template is available on [Google Slides](https://docs.google.com/presentation/d/12wHkP9c6tmh7g9HA02PbtRvy85qjVAiA1SUPT6ujuAM/edit?usp=sharing).

{% assign slidewareUrl = "/assets/pdf/slideware.pdf" | relative_url %}
{% pdf slidewareUrl no_link %}

## Memorandums

Memorandums are used for formal internal communication between or within departments. Use clear, concise language that effectively delivers the purpose and content of the memo, keeping the intended audience in mind. Memorandums can be constructed using the following template:

{% assign memoUrl = "/assets/pdf/memo.pdf" | relative_url %}
{% pdf memoUrl no_link %}

## Business Letters

For formal communication with external entities, the business letter should be used. Since these letters represent the company to other entities, be sure to use professional language and be courteous. Address the recipient properly and include introduction and conclusion sections. The letter should include the company letterhead and use a traditional typeface:

{% assign letterUrl = "/assets/pdf/letter.pdf" | relative_url %}
{% pdf letterUrl no_link %}

## Technical Reports

The results of research or testing should be communicated in the IEEE format for ease of distribution. The standard IEEE template is shown below, with the optional addition of a monochrome Slip logo. These reports should adhere to established conventions for domain specific language and notation. Reports should be comprehensive and the results within should be reproducible.

{% assign reportUrl = "/assets/pdf/report.pdf" | relative_url %}
{% pdf reportUrl no_link %}