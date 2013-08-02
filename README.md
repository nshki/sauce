sauce
=====

## Overview

[Middleman](http://middlemanapp.com/) template with Haml, Compass, and CoffeeScript.


## Installation / Updating

    # Clone the repo as a Middleman template
    git clone git@github.com:nikiliu/sauce.git ~/.middleman/sauce

    # Update to latest version
    cd ~/.middleman/sauce/; git pull


## Usage

    # Scaffold a project using Sauce
    middleman init my_project --template=sauce

    # Navigate to the new project
    cd my_project

    # Fire up a local development server (LiveReload equipped)
    bundle exec middleman server

    # Build a production-ready version of your app
    bundle exec middleman build
