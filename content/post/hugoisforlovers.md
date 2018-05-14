+++
title = "Getting Started with Hugo"
description = ""
tags = [
    "go",
    "golang",
    "hugo",
    "development",
]
date = "2014-04-02"
categories = [
    "Development",
    "golang",
]
author = "John Doe"
language = "en"
+++

## Step Yo

Goto [hugo releases](https://github.com/spf13/hugo/releases) and download the
appropriate version for your os and architecture.

Save it somewhere specific as we will be using it in the next step.

More complete instructions are available at [installing hugo](/overview/installing/)

## Step 2. Build the Docs

Hugo has its own example site which happens to also be the documentation site
you are reading right now.

Follow the following steps:

 1. Clone the [hugo repository](http://github.com/spf13/hugo)
 2. Go into the repo
 3. Run hugo in server mode and build the docs
 4. Open your browser to http://localhost:1313

Corresponding pseudo commands:

    git clone https://github.com/spf13/hugo
    cd hugo
    /path/to/where/you/installed/hugo server --source=./docs
    > 29 pages created
    > 0 tags index created
    > in 27 ms
    > Web Server is available at http://localhost:1313
    > Press ctrl+c to stop

Once you've gotten here, follow along the rest of this page on your local build.

## Step 3. Change the docs site