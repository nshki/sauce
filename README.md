![Sauce](source/images/sauce.png?raw=true)

## Overview

[Middleman](http://middlemanapp.com/) template with Haml, Compass, and
CoffeeScript. Comes ready with IE conditional classes, HTML5Shiv, body classes,
jQuery (official CDN), LiveReload, and pretty URLs.


## Installing / Updating

    # Clone the repo as a Middleman template
    git clone git@github.com:nikiliu/sauce.git ~/.middleman/sauce

    # Update to latest version
    cd ~/.middleman/sauce/; git pull


## Usage

    # Scaffold a project using Sauce
    middleman init [my_project] --template=sauce

    # Optionally remove default README and Git repository
    cd ~/.middleman/sauce/; rm -rf README .git/

    # Fire up a local development server (LiveReload equipped)
    bundle exec middleman server

    # Build a production-ready version of your app
    bundle exec middleman build


## File Structure

    |_ source/
    |  |_ images/
    |  |  |_ sauce.png             # Sauce logo
    |  |
    |  |_ javascripts/
    |  |  |_ modules/              # Individual JavaScript modules
    |  |  |_ vendor/               # For any third-party plugins
    |  |  |
    |  |  |_ application.coffee    # Manifest file
    |  |
    |  |_ layouts/
    |  |  |_ _doctype.haml         # DOCTYPE markup
    |  |  |_ _meta.haml            # Meta tags
    |  |  |_ _icons.haml           # Icon includes
    |  |  |_ application.haml      # Main layout
    |  |
    |  |_ stylesheets/
    |  |  |_ components/           # Individual Sass components
    |  |  |_ config/
    |  |  |  |_ _colors.scss       # Color config
    |  |  |  |_ _typography.scss   # Typography config
    |  |  |  |_ _general.scss      # General config
    |  |  |  |_ _media.scss        # Media query config
    |  |  |
    |  |  |_ vendor/
    |  |  |  |_ normalize.css      # Normalize
    |  |  |
    |  |  |_ application.scss      # Manifest file
    |  |
    |  |_ favicon.ico              # Sauce favicon
    |  |_ index.haml               # Default page
    |
    |_ .gitignore                  # Git ignore
    |_ config.rb                   # Middleman config
    |_ Gemfile                     # Dependencies
    |_ Gemfile.lock                # Last verified dependencies
    |_ Rakefile                    # Rake tasks
    |_ README.md                   # This README


## Publishing to gh-pages

Sauce includes [middleman-gh-pages](https://github.com/neo/middleman-gh-pages).

    # Publish a build to the gh-pages branch on GitHub
    bundle exec rake publish
