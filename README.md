![Sauce](source/images/sauce.png?raw=true)

## Overview

Vanilla [Middleman](http://middlemanapp.com/) template designed to minimize configuration time and get you writing code right away. Sauce uses [Haml](http://haml.info/) for markup, [Sass](http://sass-lang.com/) & [Autoprefixer](https://github.com/postcss/autoprefixer) for stylesheets, and [CoffeeScript](http://coffeescript.org/) for scripts. It also ships with the handy Middleman extensions [middleman-livereload](https://github.com/middleman/middleman-livereload) and [middleman-gh-pages](https://github.com/neo/middleman-gh-pages).

Stylesheet and script architecture is designed with the idea of components in mind -- independent, self-contained files designed for a specific purpose.

For stylesheets, these live in the `source/stylesheets/components` directory. For scripts, these live in the `source/javascripts/modules` directory. Modules are components. JavaScript components are called modules simply for the sake of distinguishing what type of component you can refer to.


## Install

    # Clone the repo as a Middleman template
    mkdir ~/.middleman
    cd ~/.middleman
    git clone git@github.com:nikiliu/sauce.git

    # Update to latest version
    cd ~/.middleman/sauce/
    git pull


## Usage

    # Start a project with Sauce
    middleman init my_project --template=sauce
    cd my_project
    rm -rf README .git/

    # Fire up a local development server
    bundle exec middleman server

    # Publish a build to the gh-pages branch on GitHub
    bundle exec rake publish


## File Structure

    |_ source/
    |  |_ images/
    |  |_ javascripts/
    |  |  |_ modules/              # Self-contained modules
    |  |  |_ vendor/               # Third-party scripts
    |  |
    |  |_ layouts/
    |  |
    |  |_ stylesheets/
    |     |_ config/               # App-wide style config
    |     |_ components/           # Self-contained components
    |     |_ vendor/               # Third-party styles
